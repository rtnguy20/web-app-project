class AddIndustryToCompanyListings < ActiveRecord::Migration[5.0]
  def change
    add_column :company_listings, :industry, :string
  end
end
