class AddResourceIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :resource_id, :integer
  end
end
