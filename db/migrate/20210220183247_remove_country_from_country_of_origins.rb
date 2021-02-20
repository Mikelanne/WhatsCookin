class RemoveCountryFromCountryOfOrigins < ActiveRecord::Migration[6.1]
  def change
    remove_column :country_of_origins, :country, :string
  end
end
