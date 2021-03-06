class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def update
  end

  def delete
  end

  def show

  end

  def index
    @posts = Post.all
  end


private

  def post_params
    params.require(:post).permit(:title,:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end


end
