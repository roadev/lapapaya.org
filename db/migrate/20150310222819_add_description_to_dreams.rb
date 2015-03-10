class AddDescriptionToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :description, :text
  end
end
