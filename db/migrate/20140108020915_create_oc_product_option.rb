class CreateOcProductOption < ActiveRecord::Migration
  def change
  create_table "oc_product_option", primary_key: "product_option_id", force: true do |t|
    t.integer "product_id",   null: false
    t.integer "option_id",    null: false
    t.text    "option_value", null: false
    t.boolean "required",     null: false
  end
  end
end
