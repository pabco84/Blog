class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.create(title: params[:title], created_at: params[:created_at], image_url: params[:image_url], content: params[:content])
  end
  
end
