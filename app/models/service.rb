class Service < ApplicationRecord
  validates :price, numericality: {greater_than: 0}
  validates :kind, presence: true
end
