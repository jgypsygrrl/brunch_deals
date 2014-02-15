class Deal < ActiveRecord::Base
  has_many :users, through: :favorites
end
