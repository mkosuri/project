class AddColumnToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :email, :string
    add_column :gadgets, :name, :string
  end
end
