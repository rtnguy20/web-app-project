class AddPictureToJobrecs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobrecs, :picture_url, :string
  end
end
