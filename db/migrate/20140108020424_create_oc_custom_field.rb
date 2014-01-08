class CreateOcCustomField < ActiveRecord::Migration
  def change
  create_table "oc_custom_field", primary_key: "custom_field_id", force: true do |t|
    t.string  "type",       limit: 32, null: false
    t.text    "value",                 null: false
    t.boolean "required",              null: false
    t.string  "location",   limit: 32, null: false
    t.integer "position",              null: false
    t.integer "sort_order",            null: false
  end
  end
end
