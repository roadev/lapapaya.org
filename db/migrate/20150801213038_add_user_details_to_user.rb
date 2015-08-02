class AddUserDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :country, :string
    add_column :users, :region, :string
    add_column :users, :city, :string
    add_column :users, :born_date, :date
    add_column :users, :website, :string
  end
end
