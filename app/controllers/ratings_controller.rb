class RatingsController < ApplicationController

  respond_to :html, :js

  def new
    @rating = Rating.new
    @resource = Resource.find(params[:resource_id])
    @resource_id = params[:resource_id]
  end

  def create
    @rating = Rating.new(rating_params)
    resource = Resource.find(params[:rating][:resource])
    @rating.resource = resource
    user_rating = Rating.where("user_id LIKE ? and resource_id LIKE ?", current_user.id, resource)
    if !user_rating.empty?
      flash[:danger] = "You already rated this resource"
      redirect_to subject_url(resource.subject)
    else
      @rating.user = current_user
      if @rating.save
        flash[:success] = "Thanks for rating!"
        redirect_to subject_url(resource.subject)
      else
        flash[:danger] = "Failed to submit rating"
        redirect_to new_rating_url
      end
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value)
  end


end
