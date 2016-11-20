class Realty < ApplicationRecord
  validates :kadastr_passport, presence: true
  validates :estimated_cost, numericality: {greater_than: 0}
  enum kind: [:land_plot, :house, :garage, :commerical_realty, :room]
end
