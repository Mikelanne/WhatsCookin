class CreateCookbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :meal_type
      t.string :cuisine

      t.timestamps
    end
  end
end
