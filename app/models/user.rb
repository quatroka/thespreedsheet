class User < ApplicationRecord
  has_many :spreed_sheets, dependent: :destroy
  has_secure_password
  validates :password, presence: true
end
