class CreateOcAttribute < ActiveRecord::Migration
  def change
  
  create_table "oc_attribute", primary_key: "attribute_id", force: true do |t|
    t.integer "attribute_group_id", null: false
    t.integer "sort_order",         null: false
  end
  
  end
end
