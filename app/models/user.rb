class User < ApplicationRecord
  has_many :spreed_sheets
  has_secure_password
  validates :password, presence: true

end
