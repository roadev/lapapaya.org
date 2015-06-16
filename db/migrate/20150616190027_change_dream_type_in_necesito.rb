class ChangeDreamTypeInNecesito < ActiveRecord::Migration
  def change
  	change_column :dreams, :necesito, :text
  end
end
