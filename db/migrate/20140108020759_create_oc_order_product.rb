class CreateOcOrderProduct < ActiveRecord::Migration
  def change
  create_table "oc_order_product", primary_key: "order_product_id", force: true do |t|
    t.integer "order_id",                                                     null: false
    t.integer "product_id",                                                   null: false
    t.string  "name",                                                         null: false
    t.string  "model",      limit: 64,                                        null: false
    t.integer "quantity",                                                     null: false
    t.decimal "price",                 precision: 15, scale: 4, default: 0.0, null: false
    t.decimal "total",                 precision: 15, scale: 4, default: 0.0, null: false
    t.decimal "tax",                   precision: 15, scale: 4, default: 0.0, null: false
    t.integer "reward",                                                       null: false
  end
  end
end
