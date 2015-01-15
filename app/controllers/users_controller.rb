class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.subject
      @resources = Resource.where(subject_id: @user.subject.id)
    end
  end
end
