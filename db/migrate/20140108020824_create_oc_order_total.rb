class CreateOcOrderTotal < ActiveRecord::Migration
  def change
  create_table "oc_order_total", primary_key: "order_total_id", force: true do |t|
    t.integer "order_id",                                                     null: false
    t.string  "code",       limit: 32,                                        null: false
    t.string  "title",                                                        null: false
    t.string  "text",                                                         null: false
    t.decimal "value",                 precision: 15, scale: 4, default: 0.0, null: false
    t.integer "sort_order",                                                   null: false
  end

  add_index "oc_order_total", ["order_id"], name: "idx_orders_total_orders_id", using: :btree
  end
end
