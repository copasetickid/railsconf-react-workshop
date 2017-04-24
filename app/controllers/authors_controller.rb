class AuthorsController < ApplicationController
  before_action :find_author, only: [:edit, :show]

  def index
    @authors = Author.all
  end

  def show
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
