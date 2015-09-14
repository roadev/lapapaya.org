class CreateComplices < ActiveRecord::Migration
  def change
    create_table :complices do |t|
      t.integer :dream_id
      t.string :tags
      t.text :reason
      t.text :giving

      t.timestamps
    end
  end
end
