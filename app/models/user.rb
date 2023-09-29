class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :vehicles
  has_many :fuels, through: :vehicles
end