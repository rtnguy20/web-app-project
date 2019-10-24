class AddMyColumnToCompanyListing < ActiveRecord::Migration[5.0]
  def change
    add_column :company_listings, :company_image_url, :string
  end
end
