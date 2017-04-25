class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :show]

  def index
    @posts = Post.published

    respond_to do |format|
      format.html {}
      format.json do
        render json: @posts
      end
    end
  end

  def drafts
    @posts = Post.drafts

    respond_to do |format|
      format.html {}
      format.json do
        render json: @posts
      end
    end
  end

  def show
    respond_to do |format|
      format.html {}
      format.json do
        render json: @post
      end
    end
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
