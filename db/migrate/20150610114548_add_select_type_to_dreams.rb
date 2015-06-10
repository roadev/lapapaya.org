class AddSelectTypeToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :select_type, :string
  end
end
