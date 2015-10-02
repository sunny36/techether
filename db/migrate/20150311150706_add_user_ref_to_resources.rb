class AddUserRefToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :user, index: true
    add_foreign_key :resources, :users
  end
end
