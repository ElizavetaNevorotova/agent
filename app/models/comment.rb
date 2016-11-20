class Comment < ApplicationRecord
  validates :text, :mark, presence: true
  validates :mark, inclusion:1..5
end
