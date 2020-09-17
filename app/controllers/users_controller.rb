class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @tasks = user.tasks
    @contents = user.contents
  end
end
