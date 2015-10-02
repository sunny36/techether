class AddResourceRefToRatings < ActiveRecord::Migration
  def change
    add_reference :ratings, :resource, index: true
    add_foreign_key :ratings, :resources
  end
end
