class Ingredient < ActiveRecord::Base

  has_many :ingredient_line_items, dependent: :destroy
  has_many :recipes, through: :ingredient_line_items
end
