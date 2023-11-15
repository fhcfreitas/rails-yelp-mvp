class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5, message: 'must be between 0 and 5' }, numericality: { only_integer: true }
  belongs_to :restaurant
end
