class WelcomeController < ApplicationController

  def index
    @books = Book.first(5)
  end
end
