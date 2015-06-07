class BookInstance < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  scope :available, -> { where(user: nil) }

  def available?
    user == nil
  end

  def rent(user)
    self.user = user;
    self.save
  end

  def returnBook
    self.user = nil;
    self.save
  end

end
