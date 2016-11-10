class Cocktail < ApplicationRecord
  validates :name, uniqueness: true
  validates
end
