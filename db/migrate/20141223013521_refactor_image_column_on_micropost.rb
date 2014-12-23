class RefactorImageColumnOnMicropost < ActiveRecord::Migration
  def change
  	remove_column :microposts, :image
  	add_attachment :microposts, :image
  end
end
