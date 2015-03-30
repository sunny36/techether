class AddDetailsToFavourites < ActiveRecord::Migration
  def change
    add_reference :favourites, :subject, index: true
    add_foreign_key :favourites, :subjects
    add_reference :favourites, :resource, index: true
    add_foreign_key :favourites, :resources
    add_reference :favourites, :user, index: true
    add_foreign_key :favourites, :users
    add_column :favourites, :is_subject, :boolean
  end
end
