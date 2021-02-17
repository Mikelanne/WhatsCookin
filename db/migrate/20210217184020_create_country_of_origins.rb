class CreateCountryOfOrigins < ActiveRecord::Migration[6.1]
  def change
    create_table :country_of_origins do |t|
      t.string :country

      t.timestamps
    end
  end
end
