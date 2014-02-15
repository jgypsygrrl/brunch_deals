class User < ActiveRecord::Base
  has_many :deals
  has_many :favorites
  
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :balance, numericality: { greater_than_or_equal_to: 0 }
  
  has_secure_password

end
