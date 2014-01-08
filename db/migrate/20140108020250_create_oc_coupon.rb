class CreateOcCoupon < ActiveRecord::Migration
  def change
  create_table "oc_coupon", primary_key: "coupon_id", force: true do |t|
    t.string   "name",          limit: 128,                          null: false
    t.string   "code",          limit: 10,                           null: false
    t.string   "type",          limit: 1,                            null: false
    t.decimal  "discount",                  precision: 15, scale: 4, null: false
    t.boolean  "logged",                                             null: false
    t.boolean  "shipping",                                           null: false
    t.decimal  "total",                     precision: 15, scale: 4, null: false
    t.date     "date_start",                                         null: false
    t.date     "date_end",                                           null: false
    t.integer  "uses_total",                                         null: false
    t.string   "uses_customer", limit: 11,                           null: false
    t.boolean  "status",                                             null: false
    t.datetime "date_added",                                         null: false
  end
  end
end
