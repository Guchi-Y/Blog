class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end 

  def new
    @post = Post.find(current_user.id)
  end
end

