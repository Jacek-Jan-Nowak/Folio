class ProjectsController < ApplicationController
  before_action :set_user
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    
  end

  def edit
    
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = @user
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def destroy
    @project.delete
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:roject).permit(:title, :description )
  end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
