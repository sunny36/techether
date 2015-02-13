class RemoveDescriptionFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :description, :string
  end
end
