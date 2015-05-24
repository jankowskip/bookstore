class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :book_instances
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [ :guest, :user, :admin ]

end
