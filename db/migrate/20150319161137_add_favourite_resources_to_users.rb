class AddFavouriteResourcesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favourite_resources, :string
  end
end
