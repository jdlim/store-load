class CreateOcCurrency < ActiveRecord::Migration
  def change
  create_table "oc_currency", primary_key: "currency_id", force: true do |t|
    t.string   "title",         limit: 32, null: false
    t.string   "code",          limit: 3,  null: false
    t.string   "symbol_left",   limit: 12, null: false
    t.string   "symbol_right",  limit: 12, null: false
    t.string   "decimal_place", limit: 1,  null: false
    t.float    "value",         limit: 15, null: false
    t.boolean  "status",                   null: false
    t.datetime "date_modified",            null: false
  end
  end
end
