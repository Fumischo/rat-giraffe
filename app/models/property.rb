class Property < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }
  validates :address, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal: 0 }

  has_many :closest_stations 
  accepts_nested_attributes_for :closest_stations


end
