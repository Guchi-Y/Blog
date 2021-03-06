class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]
  
  def index
    @posts = Post.all.order("created_at DESC")
  end 

  def new
    @post = Post.new
  end

  def create
    redirect_to root_path unless (Post.create(post_params)).save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.find(params[:post][:id]).update(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user_id == current_user.id
  end
  
  private
  def post_params
    params.require(:post).permit(:text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end  
end