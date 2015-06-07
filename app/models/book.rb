class Book < ActiveRecord::Base
  belongs_to :publisher
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :cathegories
  has_many :book_instances

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('missing_book_:style.jpg', :digest => false)
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
