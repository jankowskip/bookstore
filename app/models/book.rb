class Book < ActiveRecord::Base
  belongs_to :publisher
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :cathegories
  has_many :book_instances

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('missing_book_:style.jpg', :digest => false)
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def can_rent?
    !book_instances.available.empty?
  end

  def rent(user)
    book_instances.available.first.rent(user)
  end

  def can_return?(user)
    !book_instances.where(user: user).empty?
  end

  def returnBook(user)
    book_instances.where(user: user).first.returnBook()
  end

end
