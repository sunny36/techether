class AddResourceCountToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :resource_count, :integer
  end
end
