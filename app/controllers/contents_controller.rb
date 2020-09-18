class ContentsController < ApplicationController

  before_action :confirm_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.includes(:user)
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.create(content_params)
    if @content.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end
 
  def show
  end

  def edit
  end

  def update
    if @content.update(content_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    if @content.destroy
      redirect_to user_path(current_user.id)
    else
      render :show
    end
  end

  private
  def content_params
    params.require(:content).permit(:image, :message).merge(user_id: current_user.id)
  end

  def confirm_content
    @content = Content.find(params[:id])
  end

end
