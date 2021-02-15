class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.text :directions
      t.integer :skill_level
      t.string :cuisine
      t.string :meal_type
      t.integer :user_id
      t.integer :cookbook_id

      t.timestamps
    end
  end
end
