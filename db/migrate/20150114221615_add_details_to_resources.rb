class AddDetailsToResources < ActiveRecord::Migration
  def change
    add_column :resources, :title, :string
    add_column :resources, :type, :string
    add_column :resources, :description, :string
    add_column :resources, :difficulty, :string
    add_column :resources, :rating, :integer
    add_reference :resources, :subject, index: true
    add_foreign_key :resources, :subjects
  end
end
