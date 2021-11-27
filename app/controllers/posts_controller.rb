class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end


  private

  def post_params
    params.require(:post).permit(:body)
  end
end
