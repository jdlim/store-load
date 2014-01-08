class CreateOcAttributeGroup < ActiveRecord::Migration
  def change
   create_table "oc_attribute_group", primary_key: "attribute_group_id", force: true do |t|
    t.integer "sort_order", null: false
  end
  end
end
