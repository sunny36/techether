class SubjectsController < ApplicationController

  # Main subject results page
  def index
    # If user has a search query
    if params[:search].present?
      @search = params[:search]
      @allSubjects = Subject.all.search(@search)
      # If user selected a filter from sidebar
      if params[:filter].present?
        @filter = params[:filter]
        # If user selected a filter and a sort from sidebar
        if params[:sort].present?
          @sort = params[:sort]
          # The sort option picked is by user count
          if @sort == "alphabetical"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).in_category(@filter).sort_name
          elsif @sort == "resource_count"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).in_category(@filter).sort_resource_count
          end
        # The user selected just a filter from sidebar
        else
          @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).in_category(@filter).sort_user_count
        end
      # No filter is selected
      else
        # Only a sort option is selected
        if params[:sort].present?
          @sort = params[:sort]
          if @sort == "alphabetical"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).sort_name
          elsif @sort == "resource_count"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).sort_resource_count
          end
        # No Options were selected
        else
          @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).sort_user_count
        end
      end
    else
      # No search query
      @allSubjects = Subject.all
      # Category filter present
      if params[:filter].present?
        @filter = params[:filter]
        # Category filter and sort filter present
        if params[:sort].present?
          @sort = params[:sort]
          if @sort == "alphabetical"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).in_category(@filter).sort_name
          elsif @sort == "resource_count"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).in_category(@filter).sort_resource_count
          end
        # Just Category filter present
        else
          @subjects = Subject.paginate(page: params[:page], per_page: 10).in_category(@filter).sort_user_count
        end
      # No category filter present
      else
        # Just sort filter present
        if params[:sort].present?
          @sort = params[:sort]
          if @sort == "alphabetical"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).sort_name
          elsif @sort == "resource_count"
            @subjects = Subject.paginate(page: params[:page], per_page: 10).sort_resource_count
          end
        # No filters present
        else
          @subjects = Subject.paginate(page: params[:page], per_page: 10).sort_user_count
        end
      end
    end

    categories = []
    # From all subject results, get categories relevant
    if @allSubjects.present?
      @allSubjects.each do | subject |
        tempCategories = subject.category.split(',')
        tempCategories.each do | category |
          if !categories.include?(category)
            categories << category
          end
        end
      end
    end
    # Sort categories by predefined order
    if categories.present?
      @sortedCategories = Subject.sort(categories)
    end

  end

  def show
    @subject = Subject.find(params[:id])
    @allResources = Resource.where(subject_id: @subject.id)
    @resources = Resource.paginate(page: params[:page], per_page: 10).where(subject_id: @subject.id)
    totalSum = 0.0
    count = 0
    @allResources.to_a.each do | resource |
      ratings = Rating.where(resource_id: resource.id)
      ratings.to_a.each do | rating |
        totalSum += rating.value
        count += 1
      end
    end
    @averageRating = totalSum / count
    @averageRating = (@averageRating.is_a?(Float) && @averageRating.nan?) ? 0 : @averageRating.round(2)
    @rating = Rating.new
  end

  # Method to start learning a subject
  def add
    @subject = Subject.find(params[:id])
    if current_user.save
      if params[:link]
        flash[:success] = "Now learning #{@subject.name}, click the link again."
      else
        flash[:success] = "You are now learning #{@subject.name}!"
      end
      inc_dec(@subject)
      redirect_to @subject
    else
      flash[:danger] = "Failed to add subject."
      redirect_to @subject
    end
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    categories = ""
    # Loop through all checkboxes and assign categories
    if params[:gp]
      categories << "General-Purpose,"
    end
    if params[:wd]
      categories << "Web Development,"
    end
    if params[:md]
      categories << "Mobile Development,"
    end
    if params[:f]
      categories << "Frameworks,"
    end
    if params[:mo]
      categories << "Mathematics-Oriented,"
    end
    if params[:dm]
      categories << "Database Manipulation,"
    end
    if params[:cms]
      categories << "Content Management System,"
    end
    if params[:other]
      categories << "Other,"
    end
    @subject.category = categories
    @subject.user_count = 0
    @subject.resource_count = 0
    # If subject already exists use that subject
    if check_name
      @subject = check_name
      if current_user.save
        flash[:success] = "Subject already exists."
        inc_dec(@subject)
        redirect_to current_user.subject
      else
        flash[:danger] = "Failed to create."
        redirect_to new_subject_url
      end
    # Else use the new subject
    else
      if @subject.save
        flash[:success] = "Successfully created subject."
        @subject.user_id = current_user.id
        @subject.save
        inc_dec(@subject)
        redirect_to @subject
      else
        flash[:danger] = "Failed to create."
        redirect_to new_subject_url
      end
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    @categories = @subject.category
  end

  def update
    @subject = Subject.find(params[:id])
    categories = ""
    # Loop through all checkboxes and assign categories
    if params[:gp]
      categories << "General-Purpose,"
    end
    if params[:wd]
      categories << "Web Development,"
    end
    if params[:md]
      categories << "Mobile Development,"
    end
    if params[:f]
      categories << "Frameworks,"
    end
    if params[:mo]
      categories << "Mathematics-Oriented,"
    end
    if params[:dm]
      categories << "Database Manipulation,"
    end
    if params[:cms]
      categories << "Content Management System,"
    end
    if params[:other]
      categories << "Other,"
    end
    if categories.present?
      @subject.category = categories
    end
    if @subject.update_attributes(subject_params)
      flash[:success] = "Successfully edited #{@subject.name}"
      redirect_to @subject
    else
      flash[:danger] = "Failed to edit #{@subject.name}"
      redirect_to edit_subject_url
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.users.delete(current_user)
    flash[:danger] = "Stopped learning #{@subject.name}"
    redirect_to current_user
  end

  # Add subject to favourites list
  def favourite
    subject_id = params[:subject_id]
    subject = Subject.find(subject_id)
    # No previous favourited subjects
    if current_user.favourite_subjects.nil?
      current_user.favourite_subjects = subject_id + ','
    else
      favourites = current_user.favourite_subjects.split(',')
      # If already favourited this subject, remove it instead
      if favourites.include?(subject_id)
        favourites.delete(subject_id)
        current_user.favourite_subjects = favourites.join(',')
        if current_user.save
          flash[:success] = "Removed #{subject.name} from favourites."
          redirect_to subject and return
        else
          flash[:success] = "Failed to remove #{subject.name} from favourites."
          redirect_to subject and return
        end
      end
      # If last character does not equal ',' then append ','
      if current_user.favourite_subjects[current_user.favourite_subjects.length - 1] != ','
        current_user.favourite_subjects << ','
      end
      # Append newly favourited subject id
      current_user.favourite_subjects << subject_id + ','
    end
    if current_user.save
      flash[:success] = "Added #{subject.name} to favourites to user page."
      redirect_to subject
    else
      flash[:success] = "Failed to add #{subject.name} to favourites to user page."
      redirect_to subject
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description, :image, :tags)
  end

  # Checks to see if subject name currently exists in database
  def check_name
    Subject.where(name: @subject[:name]).first
  end

  def search(query)
    Subject.where(name: query).first
  end

  # Increment subjects user count column and if user was previously learning a subject, decrement that user count.
  def inc_dec(learn_subject)
    if current_user.subject.present?
      subject = Subject.find(current_user.subject_id)
      subject.user_count = subject.user_count - 1
      subject.save
    end
    current_user.subject = learn_subject
    learn_subject.user_count = learn_subject.user_count + 1
    current_user.save
  end

end
