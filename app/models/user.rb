class User < ActiveRecord::Base
  has_many :favorites
  has_many :deals, through: :favorites
  
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  
  has_secure_password

end
