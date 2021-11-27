class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def create
    @post = Post.create!(post_params)
    redirect_to root_path
  end


  private

  def post_params
    params.permit(:body)
  end
end
