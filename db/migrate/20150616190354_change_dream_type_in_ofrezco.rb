class ChangeDreamTypeInOfrezco < ActiveRecord::Migration
  def change
  	change_column :dreams, :ofrezco, :text
  end
end
