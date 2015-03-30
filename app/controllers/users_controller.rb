class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @resources = Resource.where(user_id: @user.id)
    @ratings = Rating.where(user_id: @user.id)
    @subjects = Subject.where(user_id: @user.id)
    @favourite_subjects = Favourite.where(user_id: @user.id, is_subject: true).select('subject_id')
    @favourite_resources = Favourite.where(user_id: @user.id, is_subject: false).select('resource_id')
    # Get all subjects, resources and ratings that the user added
    @recent_activity = Subject.where(user_id: @user.id).concat(Resource.where(user_id: @user.id)).concat( Rating.where(user_id: @user.id))
    # If there are elements, sort them by created at with the newest first
    if @recent_activity.any?
      @recent_activity.sort_by!(&:created_at).reverse!
    end
  end
end
