class AddNameToCountryOfOrigins < ActiveRecord::Migration[6.1]
  def change
    add_column :country_of_origins, :name, :string
  end
end
