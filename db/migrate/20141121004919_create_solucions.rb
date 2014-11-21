class CreateSolucions < ActiveRecord::Migration
  def change
    create_table :solucions do |t|
      t.references :micropost, index: true
      t.string :solucion
      t.string :solucion

      t.timestamps
    end
  end
end
