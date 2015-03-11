class AddTimestampsToResources < ActiveRecord::Migration
  def change
    change_table :resources do |t|
      t.timestamps
    end
  end
end
