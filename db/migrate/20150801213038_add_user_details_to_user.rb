class AddUserDetailsToUser < ActiveRecord::Migration
  def up
    add_column :users, :username, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :country, :string
    add_column :users, :region, :string
    add_column :users, :city, :string
    add_column :users, :born_date, :date
    add_column :users, :website, :string
  end
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :country, :string
    add_column :users, :region, :string
    add_column :users, :city, :string
    add_column :users, :born_date, :date
    add_column :users, :website, :string
  end
  def down
    remove_column :users, :username, :string
    remove_column :users, :facebook, :string
    remove_column :users, :twitter, :string
    remove_column :users, :country, :string
    remove_column :users, :region, :string
    remove_column :users, :city, :string
    remove_column :users, :born_date, :date
    remove_column :users, :website, :string
  end
end
