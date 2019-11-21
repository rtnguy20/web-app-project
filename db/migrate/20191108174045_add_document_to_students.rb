class AddDocumentToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :document, :string
  end
end
