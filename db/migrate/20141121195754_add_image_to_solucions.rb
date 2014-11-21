class AddImageToSolucions < ActiveRecord::Migration
  def change
    add_column :solucions, :image, :string
  end
end
