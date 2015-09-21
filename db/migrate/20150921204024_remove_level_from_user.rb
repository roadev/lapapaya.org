class RemoveLevelFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :level, :integer
  end
end
