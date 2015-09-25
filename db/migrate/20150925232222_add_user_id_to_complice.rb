class AddUserIdToComplice < ActiveRecord::Migration
  def change
    add_column :complices, :user_id, :integer
    add_index :complices, :user_id
  end
end
