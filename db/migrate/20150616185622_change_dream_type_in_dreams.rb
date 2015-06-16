class ChangeDreamTypeInDreams < ActiveRecord::Migration
  def change
  	change_column :dreams, :dream, :text
  end
end
