class AddContactToCompanyListings < ActiveRecord::Migration[5.0]
  def change
    add_column :company_listings, :contact_info, :string
  end
end
