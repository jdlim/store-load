class CreateOcVoucherHistory < ActiveRecord::Migration
  def change
  create_table "oc_voucher_history", primary_key: "voucher_history_id", force: true do |t|
    t.integer  "voucher_id",                          null: false
    t.integer  "order_id",                            null: false
    t.decimal  "amount",     precision: 15, scale: 4, null: false
    t.datetime "date_added",                          null: false
  end
  end
end
