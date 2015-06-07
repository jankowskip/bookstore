class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def rent
    user = current_user()
    @book = Book.find(params[:id])
    @book.rent(user)
    redirect_to book_path(@book)
  end

  def return
    user = current_user()
    @book = Book.find(params[:id])
    @book.returnBook(user)
    redirect_to book_path(@book)
  end

end
