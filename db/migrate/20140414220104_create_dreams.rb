class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :dream
      t.string :whant
      t.string :offer
      t.string :need

      t.timestamps
    end
  end
end
