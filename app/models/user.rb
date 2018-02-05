class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }, on: :create
  validates :password_confirmation, length: { minimum: 8 }, on: :create
end
