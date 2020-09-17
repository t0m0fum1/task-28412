class ContentsController < ApplicationController

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
 




  private
  def content_params
    params.require(:content).permit(:image, :message).merge(user_id: current_user.id)
  end

end
