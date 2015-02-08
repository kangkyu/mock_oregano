require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_should_save_itself
    apple_jam = Recipe.new(name:"apple jam", instructions: "stir")
    apple_jam.save
    assert_same Recipe.count, 3  # why 3, not 0 ?
  end

  def test_should_not_save_itself_without_name
    apple_jam = Recipe.new
    assert_not apple_jam.save, "Saved the recipe without name"
  end
end
