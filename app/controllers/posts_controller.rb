class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]
  
  def index
    @posts = Post.all.order("created_at DESC")
  end 

  def new
    @post = Post.new
  end

  def create
    Post.create(text: params[:post][:text], user_id: current_user.id)
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end  
end


