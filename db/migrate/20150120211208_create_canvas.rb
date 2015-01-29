class CreateCanvas < ActiveRecord::Migration
  def change
    create_table :canvas do |t|
      t.string :cliente1
      t.string :canal1
      t.string :problema1
      t.string :cliente2
      t.string :canal2
      t.string :problema2
      t.string :cliente3
      t.string :canal3
      t.string :problema3

      t.timestamps
    end
  end
end
