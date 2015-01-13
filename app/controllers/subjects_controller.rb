class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def add
    
    @subject = Subject.find(params[:id])
    current_user.subject = @subject
    if current_user.save
      flash[:success] = "Success"
      redirect_to current_user
    else
      flash[:danger] = "Failed"
      redirect_to @subject
    end
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    # If subject already exists use that subject
    if check_name
      current_user.subject = check_name
    # Else use the new subject
    else
      current_user.subject = @subject
    end
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

  def check_name
    Subject.where(name: @subject[:name]).first
  end

  def search(query)
    Subject.where(name: query).first
  end

end
