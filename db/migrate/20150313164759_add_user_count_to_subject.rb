class AddUserCountToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :user_count, :integer
  end
end
