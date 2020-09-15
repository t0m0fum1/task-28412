class TasksController < ApplicationController
  def index
    @tasks = Task.includes(:user)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end





  private
  def task_params
    params.require(:task).permit(:text, :priority_id).merge(user_id: current_user.id)
  end

end
