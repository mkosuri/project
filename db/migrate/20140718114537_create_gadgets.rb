class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :title
      t.string :useful_for
      t.string :analysis_group
      t.string :gadget_description
      t.float :cost
      t.string :company_name
      t.string :company_website
      t.string :currency_id

      t.timestamps
    end
  end
end
