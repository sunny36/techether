class SubjectsController < ApplicationController
  def new
    @subject = current_user.build_subject
  end

  def create
    @user = current_user
    @subject = @user.build_subject(subject_params)
    if @user.save
      redirect_to current_user
    else
      redirect_to new_subject_url
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
