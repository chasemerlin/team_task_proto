class TasksController < ApplicationController 
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create 
    @task = Task.new(params[:task])
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def has_been_completed 
    @task = Task.find(params[:id])
    @task.update_attributes(completed: true)
    redirect_to root_path
  end
end