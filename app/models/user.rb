class User < ApplicationRecord
  validates :username, length: { in: 3..15 }, presence: true
  validates :password, length: { in: 5..20 }, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
end
