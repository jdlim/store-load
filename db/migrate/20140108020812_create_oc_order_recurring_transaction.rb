class CreateOcOrderRecurringTransaction < ActiveRecord::Migration
  def change
  create_table "oc_order_recurring_transaction", primary_key: "order_recurring_transaction_id", force: true do |t|
    t.integer  "order_recurring_id",                          null: false
    t.datetime "created",                                     null: false
    t.decimal  "amount",             precision: 10, scale: 4, null: false
    t.string   "type",                                        null: false
  end
  end
end
