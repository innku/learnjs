class TasksController < ApplicationController
  respond_to :html, :json
  
  def index
    @tasks = Task.all
    respond_with @tasks
  end
  
  def create
    @task = Task.create(params[:task])
    render json: @task
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update_attributes params[:task]
    render json: @task
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: @task
  end
  
  
end
