class CreateOcProduct < ActiveRecord::Migration
  def change
  create_table "oc_product", primary_key: "product_id", force: true do |t|
    t.string   "model",           limit: 64,                                           null: false
    t.string   "sku",             limit: 64,                                           null: false
    t.string   "upc",             limit: 12,                                           null: false
    t.string   "ean",             limit: 14,                                           null: false
    t.string   "jan",             limit: 13,                                           null: false
    t.string   "isbn",            limit: 13,                                           null: false
    t.string   "mpn",             limit: 64,                                           null: false
    t.string   "location",        limit: 128,                                          null: false
    t.integer  "quantity",                                             default: 0,     null: false
    t.integer  "stock_status_id",                                                      null: false
    t.string   "image"
    t.integer  "manufacturer_id",                                                      null: false
    t.boolean  "shipping",                                             default: true,  null: false
    t.decimal  "price",                       precision: 15, scale: 4, default: 0.0,   null: false
    t.integer  "points",                                               default: 0,     null: false
    t.integer  "tax_class_id",                                                         null: false
    t.date     "date_available",                                                       null: false
    t.decimal  "weight",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.integer  "weight_class_id",                                      default: 0,     null: false
    t.decimal  "length",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.decimal  "width",                       precision: 15, scale: 8, default: 0.0,   null: false
    t.decimal  "height",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.integer  "length_class_id",                                      default: 0,     null: false
    t.boolean  "subtract",                                             default: true,  null: false
    t.integer  "minimum",                                              default: 1,     null: false
    t.integer  "sort_order",                                           default: 0,     null: false
    t.boolean  "status",                                               default: false, null: false
    t.datetime "date_added",                                                           null: false
    t.datetime "date_modified",                                                        null: false
    t.integer  "viewed",                                               default: 0,     null: false
  end
  end
end
