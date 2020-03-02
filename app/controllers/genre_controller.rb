class GenreController < ApplicationController

  def tales
    @books = Book.all
  end
  def index
    @groups = Group.all
  end

end
