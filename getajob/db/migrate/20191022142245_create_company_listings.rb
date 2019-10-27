class CreateCompanyListings < ActiveRecord::Migration[5.0]
  def change
    create_table :company_listings do |t|
      t.string :name
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
