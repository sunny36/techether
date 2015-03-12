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
        @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).in_category(@filter).sort_name
      else
        @subjects = Subject.paginate(page: params[:page], per_page: 10).search(@search).sort_name
      end
    else
      # No search query
      @allSubjects = Subject.all
      if params[:filter].present?
        @filter = params[:filter]
        @subjects = Subject.paginate(page: params[:page], per_page: 10).in_category(@filter).sort_name
      else
        @subjects = Subject.paginate(page: params[:page], per_page: 10).sort_name
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
    @resources = Resource.sort(Resource.where(subject_id: @subject.id).to_a)
  end

  def add
    @subject = Subject.find(params[:id])
    current_user.subject = @subject
    if current_user.save
      flash[:success] = "You are now learning #{@subject.name}!"
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
    # If subject already exists use that subject
    if check_name
      current_user.subject = check_name
      if current_user.save
        flash[:success] = "Subject already exists."
        redirect_to current_user.subject
      else
        flash[:danger] = "Failed to create."
        redirect_to new_subject_url
      end
    # Else use the new subject
    else
      current_user.subject = @subject
      if current_user.save
        flash[:success] = "Successfully created subject."
        redirect_to current_user
      else
        flash[:danger] = "Failed to create."
        redirect_to new_subject_url
      end
    end
  end

  def edit
    if current_user.subject.nil?
      @subject = current_user.build_subject
    else
      @subject = current_user.subject
    end
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to current_user
    else
      redirect_to edit_subject_url
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.users.delete(current_user)
    flash[:danger] = "Stopped learning #{@subject.name}"
    redirect_to current_user
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description, :image, :tags)
  end

  def check_name
    Subject.where(name: @subject[:name]).first
  end

  def search(query)
    Subject.where(name: query).first
  end

end
