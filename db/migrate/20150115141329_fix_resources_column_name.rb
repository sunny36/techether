class FixResourcesColumnName < ActiveRecord::Migration
  def change
    rename_column :resources, :type, :source
  end
end
