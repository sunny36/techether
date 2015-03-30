class FavouritesController < ApplicationController

  # Create a new favourite row with given subject/resource id
  def add
    favourite = Favourite.new
    subject = Subject.find(params[:subject_id])
    if params[:resource_id]
      resource = Resource.find(params[:resource_id])
      favourite.resource = resource
      favourite.user = current_user
      favourite.is_subject = false
    else
      favourite.subject = subject
      favourite.user = current_user
      favourite.is_subject = true
    end
    if favourite.save
      if favourite.is_subject
        flash[:success] = "Added #{subject.name} to favourites on user page."
      else
        flash[:success] = "Added #{resource.title} to favourites on user page."
      end
      redirect_to subject_path(subject)
    else
      flash[:success] = "Failed to add to favourites."
      redirect_to subject_path(subject)
    end
  end

  # Remove the favourite row for given subject/resource id
  def remove
    subject = Subject.find(params[:subject_id])
    if params[:resource_id]
      resource = Resource.find(params[:resource_id])
      favourite = Favourite.find_resource_favourite(resource, current_user)
    else
      favourite = Favourite.find_subject_favourite(subject, current_user)
    end
    if favourite.present?
      favourite.destroy
      if resource.present?
        flash[:success] = "Removed #{resource.title} from favourites."
      else
        flash[:success] = "Removed #{subject.name} from favourites."
      end
      redirect_to subject_path(subject)
    else
      flash[:success] = "Failed to remove from favourites."
      redirect_to subject_path(subject)
    end
  end
end
