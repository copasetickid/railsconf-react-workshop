class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :show]

  def index
    @posts = Post.published
  end

  def drafts
    @posts = Post.drafts
  end

  def show
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :published_date,
    :published, :status, :author_id)
  end

  def find_post
    @post = Post.find(params:id)
  end
end
