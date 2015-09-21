class AddLevelToUser < ActiveRecord::Migration
  def change
    add_column :users, :level, :integer, default: 0, null: false
  end
end
