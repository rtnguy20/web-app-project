class AddLocationToCompanyListings < ActiveRecord::Migration[5.0]
  def change
    add_column :company_listings, :location, :string
  end
end
