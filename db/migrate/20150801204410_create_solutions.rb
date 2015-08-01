class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :micropost_id
      t.text :content

      t.timestamps
    end
  end
end
