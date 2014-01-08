class CreateOcProductSpecial < ActiveRecord::Migration
  def change
  create_table "oc_product_special", primary_key: "product_special_id", force: true do |t|
    t.integer "product_id",                                               null: false
    t.integer "customer_group_id",                                        null: false
    t.integer "priority",                                   default: 1,   null: false
    t.decimal "price",             precision: 15, scale: 4, default: 0.0, null: false
    t.date    "date_start",                                               null: false
    t.date    "date_end",                                                 null: false
  end

  add_index "oc_product_special", ["product_id"], name: "product_id", using: :btree

  end
end
