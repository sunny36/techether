class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @resources = Resource.where(subject_id: @user.subject.id) if @user.subject
  end
end
