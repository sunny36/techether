class RemoveResourceIdFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :resource_id, :integer
  end
end
