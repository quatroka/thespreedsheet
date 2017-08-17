class User < ApplicationRecord
  has_many :spreed_sheets, dependent: :destroy
  has_secure_password
  before_create :create_remember_token
  validates :password, presence: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end
end
