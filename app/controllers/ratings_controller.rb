class RatingsController < ApplicationController

  def new
    @rating = Rating.new
    @resource = params[:resource_id]
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.resource = Resource.find(params[:rating][:resource])
    if @rating.save
      flash[:success] = "Thanks for rating!"
      redirect_to subject_url(current_user.subject)
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
