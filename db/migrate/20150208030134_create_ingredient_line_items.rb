class CreateIngredientLineItems < ActiveRecord::Migration
  def change
    create_table :ingredient_line_items do |t|
      t.integer :ingredient_id
      t.integer :unit_id
      t.integer :recipe_id
      t.decimal :amount_by_unit

      t.timestamps null: false
    end
  end
end
