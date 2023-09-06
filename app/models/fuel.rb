class Fuel < ApplicationRecord
  belongs_to :vehicle
  has_one :user, through: :vehicle
end
