class TasksController < ApplicationController 
  before_filter :require_user

  def index
    @tasks = Task.all
    @obligations = Obligation.where(user_id: current_user.id) 
  end

  def new
    @task = Task.new
  end

  def create 
    @task = Task.new(params[:task])
    if @task.save
      @task.users.each do |user|
        Obligation.create(user_id: user.id, task_id: @task.id)
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def has_been_completed
    @task = Task.find(params[:id])
    @obligation = Obligation.where(user_id: current_user.id, task_id: @task.id).first
    @obligation.update_attributes(date_completed: Date.today)
    redirect_to root_path
  end

end