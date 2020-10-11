class BooksController < ApplicationController


  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def index
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
