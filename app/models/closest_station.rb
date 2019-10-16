class ClosestStation < ApplicationRecord
  validates :route, presence: true
  validates :station, presence: true
  validates :on_foot, numericality:{ only_integer: true, greater_than_or_equal: 0 }

  belongs_to :properties
  
end

