class Recipe < ActiveRecord::Base

  has_many :ingredient_line_items
  accepts_nested_attributes_for :ingredient_line_items, allow_destroy: true

  has_many :ingredients, through: :ingredient_line_items

  validates :name, presence: true

end
