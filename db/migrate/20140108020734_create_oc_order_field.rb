class CreateOcOrderField < ActiveRecord::Migration
  def change
  create_table "oc_order_field", id: false, force: true do |t|
    t.integer "order_id",              null: false
    t.integer "custom_field_id",       null: false
    t.integer "custom_field_value_id", null: false
    t.integer "name",                  null: false
    t.text    "value",                 null: false
    t.integer "sort_order",            null: false
  end
  end
end
