class CreateDreams < ActiveRecord::Migration
  def change

create_table :dreams do |field|
field.string :dream
field.timestamps
end

end
end

