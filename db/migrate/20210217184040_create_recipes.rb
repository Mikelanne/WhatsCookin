class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.text :directions
      t.integer :skill_level
      t.string :meal_type
      t.integer :user_id
      t.integer :country_of_origin_id

      t.timestamps
    end
  end
end
