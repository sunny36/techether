class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favourite_subjects = Favourite.where(user_id: @user.id, is_subject: true).select('subject_id')
    @favourite_resources = Favourite.where(user_id: @user.id, is_subject: false).select('resource_id')
    # Get all subjects, resources and ratings that the user added
    @recent_activity = Subject.where(user_id: @user.id).concat(Resource.where(user_id: @user.id)).concat(Rating.where(user_id: @user.id))
    # If there are elements, sort them by created at with the newest first
    if @recent_activity.any?
      @recent_activity.sort_by!(&:created_at).reverse!
    end

    @image_source = current_user.image || "http://www.imran.com/xyper_images/icon-user-default.png"
    @ratings_count = Rating.for_user(@user.id).count
    @subjects_count = Subject.for_user(@user.id).count
    @resouces_count = Resource.for_user(@user.id).count
  end
end
