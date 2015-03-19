class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @resources = Resource.where(user_id: @user.id)
    @ratings = Rating.where(user_id: @user.id)
    @subjects = Subject.where(user_id: @user.id)
    fav_subject_string = @user.favourite_subjects
    if fav_subject_string.present?
      fav_subject_arr = fav_subject_string.split(',')
      if fav_subject_arr.present?
        @favourite_subjects = Subject.where(id: fav_subject_arr[0])
        fav_subject_arr.drop(1).each do | subject_id |
          if !@favourite_subjects.include?(Subject.where(id: subject_id))
            @favourite_subjects = @favourite_subjects +  Subject.where(id: subject_id)
          end
        end
      end
    end
    fav_resource_string = @user.favourite_resources
    if fav_resource_string.present?
      fav_resource_arr = fav_resource_string.split(',')
      if fav_resource_arr.present?
        @favourite_resources = Resource.where(id: fav_resource_arr[0])
        fav_resource_arr.drop(1).each do | resource_id |
          if !@favourite_resources.include?(Resource.where(id: resource_id))
            @favourite_resources = @favourite_resources +  Resource.where(id: resource_id)
          end
        end
      end
    end
    # @recent_activity = Subject.where(user_id: @user.id) + Resource.where(user_id: @user.id) + Rating.where(user_id: @user.id)
    # if @recent_activity
    #   @recent_activity.sort_by!(&:created_at)
    # end
  end
end
