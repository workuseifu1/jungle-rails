class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniquenes: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :password, presence: true, length: {minimum: 6}

  has_secure_password
end
