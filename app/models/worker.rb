class Worker < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :servieces
  has_many :comments
end
