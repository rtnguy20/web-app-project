class CreateJobrecs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobrecs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address

      t.timestamps
    end
  end
end
