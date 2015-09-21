class RemoveSashIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :sash_id, :integer
  end
end
