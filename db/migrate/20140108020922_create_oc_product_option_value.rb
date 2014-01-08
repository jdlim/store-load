class CreateOcProductOptionValue < ActiveRecord::Migration
  def change
  create_table "oc_product_option_value", primary_key: "product_option_value_id", force: true do |t|
    t.integer "product_option_id",                                    null: false
    t.integer "product_id",                                           null: false
    t.integer "option_id",                                            null: false
    t.integer "option_value_id",                                      null: false
    t.integer "quantity",                                             null: false
    t.boolean "subtract",                                             null: false
    t.decimal "price",                       precision: 15, scale: 4, null: false
    t.string  "price_prefix",      limit: 1,                          null: false
    t.integer "points",                                               null: false
    t.string  "points_prefix",     limit: 1,                          null: false
    t.decimal "weight",                      precision: 15, scale: 8, null: false
    t.string  "weight_prefix",     limit: 1,                          null: false
  end
  end
end
