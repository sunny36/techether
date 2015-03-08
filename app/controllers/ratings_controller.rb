class RatingsController < ApplicationController

  def new
    @rating = Rating.new
    @resource = Resource.find(params[:resource_id])
    @resource_id = params[:resource_id]
  end

  def create
    @rating = Rating.new(rating_params)
    resource = Resource.find(params[:rating][:resource])
    @rating.resource = resource
    @rating.user = current_user
    if @rating.save
      flash[:success] = "Thanks for rating!"
      redirect_to subject_url(resource.subject)
    else
      flash[:danger] = "Failed to submit rating"
      redirect_to new_rating_url
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value)
  end


end
