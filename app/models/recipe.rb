class Recipe < ActiveRecord::Base

  has_many :ingredient_line_items, dependent: :destroy
  has_many :ingredients, through: :ingredient_line_items

  validates :name, presence: true
end
