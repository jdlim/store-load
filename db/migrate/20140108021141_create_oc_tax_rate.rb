class CreateOcTaxRate < ActiveRecord::Migration
  def change
  create_table "oc_tax_rate", primary_key: "tax_rate_id", force: true do |t|
    t.integer  "geo_zone_id",                                       default: 0,   null: false
    t.string   "name",          limit: 32,                                        null: false
    t.decimal  "rate",                     precision: 15, scale: 4, default: 0.0, null: false
    t.string   "type",          limit: 1,                                         null: false
    t.datetime "date_added",                                                      null: false
    t.datetime "date_modified",                                                   null: false
  end
  end
end
