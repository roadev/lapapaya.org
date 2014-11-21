class AddLargeContentToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :large_content, :string
  end
end
