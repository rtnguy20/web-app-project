class AddTagsToCompanyListings < ActiveRecord::Migration[5.0]
  def change
    add_column :company_listings, :tags, :string
  end
end
