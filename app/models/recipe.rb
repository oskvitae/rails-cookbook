class Recipe < ApplicationRecord
  has_many :bookmarks

  valides :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, numerically: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
