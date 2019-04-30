class User < ApplicationRecord
  has_many :posts
  has_many :comments
  before_save do
    email.downcase!
    username.downcase!
  end
  validates :username, presence: true,
                       length: { maximum: 15, minimum: 4 },
                       uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255, minimum: 3 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password_digest, presence: true
end
