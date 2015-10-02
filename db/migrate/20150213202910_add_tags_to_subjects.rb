class AddTagsToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :tags, :string
  end
end
