class BooksController < ApplicationController
  def index
  end
  
  def create
    blog = Book.new(book_params)
    book.save
    redirect_to books_path  
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
