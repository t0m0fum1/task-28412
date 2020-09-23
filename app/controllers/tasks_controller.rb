class TasksController < ApplicationController

  before_action :confirm_task, only: [:show, :edit, :update, :destroy]


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

  def show
    @contents = Content.where(user_id: current_user.id).sample(1)
    
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    if @task.destroy
      redirect_to user_path(current_user.id)
    else
      render :show
    end
  end



  private
  def task_params
    params.require(:task).permit(:text, :priority_id).merge(user_id: current_user.id)
  end

  def confirm_task
    @task = Task.find(params[:id])
  end

end
