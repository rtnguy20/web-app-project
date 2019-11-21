class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :classes
      t.string :phone
      t.string :linkedin

      t.timestamps
    end
  end
end
