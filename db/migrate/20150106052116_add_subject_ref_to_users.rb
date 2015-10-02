class AddSubjectRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :subject, index: true
    add_foreign_key :users, :subjects
  end
end
