class AddOfrezcoToDream < ActiveRecord::Migration
  def change
    add_column :dreams, :ofrezco, :string
  end
end
