class TasksController < ApplicationController
  def index
    @task = Task.includes(:user)
  end

end
