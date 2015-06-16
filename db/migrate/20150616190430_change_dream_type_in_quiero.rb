class ChangeDreamTypeInQuiero < ActiveRecord::Migration
  def change
  	change_column :dreams, :quiero, :text
  end
end
