require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_should_save_itself
    apple = Ingredient.new
    assert_same Ingredient.count, 2

    apple = Ingredient.new(name:"apple", description:"a fruit")
    apple.save
    assert_same Ingredient.count, 3
  end
end
