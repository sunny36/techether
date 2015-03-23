class ResourcesController < ApplicationController

  def new
    @resource = Resource.new
    if params[:subject_id]
      @subject = params[:subject_id]
    end
  end

  # Gets called after submit from new.html.erb is pressed
  def create
    @resource = Resource.new(resource_params)
    subject = Subject.find(params[:resource][:subject])
    @resource.subject = subject
    @resource.user_id = current_user.id
    if @resource.save
      flash[:success] = "Successfully created resource"
      subject.resource_count = subject.resource_count + 1
      subject.save
      redirect_to subject_url(subject)
    else
      flash[:danger] = "Failed to create resource"
      redirect_to new_resource_url
    end
  end

  def index
  end

  # Add resource to favourites list
  def favourite
    resource_id = params[:resource_id]
    resource = Resource.find(resource_id)
    # No previous favourites
    if current_user.favourite_resources.nil?
      current_user.favourite_resources = resource_id + ','
    else
      favourites = current_user.favourite_resources.split(',')
      # If resource already favourited, remove from favourites
      if favourites.include?(resource_id)
        favourites.delete(resource_id)
        current_user.favourite_resources = favourites.join(',')
        if current_user.save
          flash[:success] = "Removed #{resource.title} from favourites."
          redirect_to Subject.find(resource.subject_id) and return
        else
          flash[:success] = "Failed to remove #{resource.title} from favourites."
          redirect_to Subject.find(resource.subject_id) and return
        end
      else
        # If last character does not equal ',' append a ','
        if current_user.favourite_resources[current_user.favourite_resources.length - 1] != ','
          current_user.favourite_resources << ','
        end
        # Append new favourited resource
        current_user.favourite_resources << resource_id + ','
      end
    end
    if current_user.save
      flash[:success] = "Added #{resource.title} to favourites to user page."
      redirect_to Subject.find(resource.subject_id)
    else
      flash[:success] = "Failed to add #{resource.title} to favourites to user page."
      redirect_to Subject.find(resource.subject_id)
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :source, :link, :difficulty)
  end
end
