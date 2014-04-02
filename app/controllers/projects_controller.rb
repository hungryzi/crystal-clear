class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to projects_path
    else
      render json: { status: 'error', messages: @project.errors.full_messages }
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :what, :who, :where, :when, :how)
  end

end
