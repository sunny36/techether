class AddDetailsToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :name, :string
    add_column :subjects, :description, :string
  end
end
