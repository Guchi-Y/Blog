class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end 

  def new
    @post = Post.new
  end

  def create
    Post.create(text: params[:post][:text], user_id: current_user.id)
  end
end

