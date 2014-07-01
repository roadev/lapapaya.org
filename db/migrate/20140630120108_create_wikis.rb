class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :title
      t.text :abstract
      t.text :content
      t.string :tags

      t.timestamps
    end
  end
end
