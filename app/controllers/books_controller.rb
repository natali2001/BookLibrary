class BooksController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @books = Book.all
    @groups = Group.all
  end

  def create
    @book = Book.new(book_params)
    @book.save

    flash[:notice] = 'Book added'

    redirect_to books_path
  end

  def new
    @book = Book.new
    @author = Author.new
    @group = Group.new
  end

  def show
    @books = Book.all
    @group = Group.all
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    flash[:notice] = 'Book removed'

    redirect_to books_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :all_groups, :all_authors, :image)
  end

end
