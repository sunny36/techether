class ResourcesController < ApplicationController

  def new
    @resource = Resource.new
    if params[:subject_id]
      @subject = params[:subject_id]
    end
  end

  # Gets called after submit from new.html.erb is pressed
  def create
    @resource = Resource.new(resource_params)
    subject = Subject.find(params[:resource][:subject])
    @resource.subject = subject
    @resource.user_id = current_user.id
    if @resource.save
      flash[:success] = "Successfully created resource"
      redirect_to subject_url(subject)
    else
      flash[:danger] = "Failed to create resource"
      redirect_to new_resource_url
    end
  end

  def index
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :source, :link, :difficulty)
  end
end
