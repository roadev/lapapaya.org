class AddQuieroToDream < ActiveRecord::Migration
  def change
    add_column :dreams, :quiero, :string
  end
end
