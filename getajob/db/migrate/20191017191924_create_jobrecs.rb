class CreateJobrecs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobrecs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :associate_company
#associate company, date of account creation, role, admin role, 
      t.timestamps
    end
  end
end
