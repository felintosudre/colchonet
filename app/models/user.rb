class User < ApplicationRecord
  validates :email, :full_name, :location, :password, presence: true
  validates :password, confirmation: true
  validates :bio, length: {minimum: 30}, allow_blank: false
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, uniqueness: true
end
