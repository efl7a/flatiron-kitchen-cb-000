class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    drop_table :recipe_ingredients

    create_table :recipe_ingredients do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
      t.timestamps null: false
    end
  end
end
