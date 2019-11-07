class AddAssociateCompanyToJobrecs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobrecs, :associate_company, :string
  end
end
