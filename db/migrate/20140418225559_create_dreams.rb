class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
    	drop_table :dreams
      t.string :dream

      t.timestamps
    end
  end
end
