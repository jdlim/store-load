class CreateOcCustomFieldValue < ActiveRecord::Migration
  def change
  create_table "oc_custom_field_value", primary_key: "custom_field_value_id", force: true do |t|
    t.integer "custom_field_id", null: false
    t.integer "sort_order",      null: false
  end
  end
end
