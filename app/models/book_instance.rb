class BookInstance < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def available?
    user == nil


  end
end
