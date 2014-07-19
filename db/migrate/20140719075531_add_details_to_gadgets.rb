class AddDetailsToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :technology_used, :string
    add_column :gadgets, :scientific_description, :text
  end
end
