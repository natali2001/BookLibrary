class AuthorsController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @authors = Author.all
    @books = Book.all
  end

  def create
    @author = Author.new(author_params)
    @author.save

    flash[:notice] = 'Author added'

    redirect_to authors_path
  end

  def new
    @author = Author.new
    @book = Book.new
    @group = Group.new
  end

  def show
    @authors = Author.all
    @books = Book.all

  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
  end

  def edit
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    flash[:notice] = 'Author removed'

    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:name, :all_groups, :all_books)
  end

end


