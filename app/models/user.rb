class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  VALIDATE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 40 }, format: { with: VALIDATE_EMAIL_REGEX }
end
