class CreateOcAffiliateTransaction < ActiveRecord::Migration
  def change

  create_table "oc_affiliate_transaction", primary_key: "affiliate_transaction_id", force: true do |t|
    t.integer  "affiliate_id",                          null: false
    t.integer  "order_id",                              null: false
    t.text     "description",                           null: false
    t.decimal  "amount",       precision: 15, scale: 4, null: false
    t.datetime "date_added",                            null: false
  end
  
  end
end
