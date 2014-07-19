class AddColumnToolsToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :tool_aviable, :boolean
  end
end
