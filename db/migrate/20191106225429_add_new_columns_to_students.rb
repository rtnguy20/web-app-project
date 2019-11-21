class AddNewColumnsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :linkedin_url, :string
    add_column :students, :twitter_url, :string
    add_column :students, :github_url, :string
    add_column :students, :resume1, :string
    add_column :students, :resume2, :string
    add_column :students, :skills, :string
    add_column :students, :interests, :string
    add_column :students, :category, :string
    add_column :students, :review, :string
  end
end
