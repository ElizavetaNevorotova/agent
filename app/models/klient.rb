class Klient < ApplicationRecord
  validates :first_name, :last_name, :s_passport, :n_passport, presence: true
  validates :s_passport, inclusion: 1000..9999
  validates :n_passport, inclusion: 100000..999999
  has_many :realties
  has_many :services
end
