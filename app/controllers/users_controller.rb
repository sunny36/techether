class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @subject = @user.subject
  end
end
