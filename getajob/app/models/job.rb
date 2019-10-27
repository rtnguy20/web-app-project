class Job < ApplicationRecord
    def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :url
      t.string :location

      t.timestamps null: false
       belongs_to :company, :class_name => 'User', :foreign_key => 'company_id'
    end
  end

