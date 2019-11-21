class AddColumnsToJobrecs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobrecs, :phone, :string
    add_column :jobrecs, :linkedin_url, :string
    add_column :jobrecs, :available, :datetime
  end
end
