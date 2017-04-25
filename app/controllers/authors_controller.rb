class AuthorsController < ApplicationController
  before_action :find_author, only: [:edit, :show]

  def index
    @authors = Author.all

    respond_to do |format|
      format.html {}
      format.json do
        render json: @authors
      end
    end
  end

  def show
    respond_to do |format|
      format.html {}
      format.json do
        render json: @author
      end
    end
  end

  def edit
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
