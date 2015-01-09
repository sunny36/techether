class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @subject = current_user.build_subject(subject_params)
    if current_user.save
      redirect_to current_user
    else
      redirect_to new_subject_url
    end
  end

  def edit
    if current_user.subject.nil?
      @subject = current_user.build_subject
    else
      @subject = current_user.subject
    end
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to current_user
    else
      redirect_to edit_subject_url
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.users.delete(current_user)
    redirect_to current_user
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
