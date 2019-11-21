class AddRatingToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :rating, :string
  end
end
