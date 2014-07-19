class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fistname, :string
    add_column :users, :lastname, :string
  end
end
