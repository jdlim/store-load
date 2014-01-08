class CreateOcVoucher < ActiveRecord::Migration
  def change
  create_table "oc_voucher", primary_key: "voucher_id", force: true do |t|
    t.integer  "order_id",                                             null: false
    t.string   "code",             limit: 10,                          null: false
    t.string   "from_name",        limit: 64,                          null: false
    t.string   "from_email",       limit: 96,                          null: false
    t.string   "to_name",          limit: 64,                          null: false
    t.string   "to_email",         limit: 96,                          null: false
    t.integer  "voucher_theme_id",                                     null: false
    t.text     "message",                                              null: false
    t.decimal  "amount",                      precision: 15, scale: 4, null: false
    t.boolean  "status",                                               null: false
    t.datetime "date_added",                                           null: false
  end
  end
end
