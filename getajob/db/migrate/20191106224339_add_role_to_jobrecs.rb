class AddRoleToJobrecs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobrecs, :role, :string
  end
end
