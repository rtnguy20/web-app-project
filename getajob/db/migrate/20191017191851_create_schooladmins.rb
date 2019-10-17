class CreateSchooladmins < ActiveRecord::Migration[5.0]
  def change
    create_table :schooladmins do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :boss

      t.timestamps
    end
  end
end
