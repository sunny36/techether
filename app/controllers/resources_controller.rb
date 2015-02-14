class ResourcesController < ApplicationController

  def new
    @resource = Resource.new
  end

  # Gets called after submit from new.html.erb is pressed
  def create
    @resource = Resource.new(resource_params)
    @resource.subject = current_user.subject
    if @resource.save
      flash[:success] = "Successfully created resource"
      redirect_to subject_url(current_user.subject)
    else
      flash[:danger] = "Failed to create resource"
      redirect_to new_subject_url
    end
  end

  def index
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :source, :link, :difficulty)
  end
end
