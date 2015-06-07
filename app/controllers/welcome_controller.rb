class WelcomeController < ApplicationController

  def index
    @books = Book.first(6)
    offset = rand(Author.count)
    @author = Author.offset(offset).first
  end
end
