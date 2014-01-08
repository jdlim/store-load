class CreateOcCustomerIp < ActiveRecord::Migration
  def change
  create_table "oc_customer_ip", primary_key: "customer_ip_id", force: true do |t|
    t.integer  "customer_id",            null: false
    t.string   "ip",          limit: 40, null: false
    t.datetime "date_added",             null: false
  end
    add_index "oc_customer_ip", ["ip"], name: "ip", using: :btree
  end
end
