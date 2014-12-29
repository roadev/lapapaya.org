class AddNecesitoToDream < ActiveRecord::Migration
  def change
    add_column :dreams, :necesito, :string
  end
end
