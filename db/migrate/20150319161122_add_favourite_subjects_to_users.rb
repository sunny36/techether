class AddFavouriteSubjectsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favourite_subjects, :string
  end
end
