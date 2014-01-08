class CreateOcCustomerBanIp < ActiveRecord::Migration
  def change
  create_table "oc_customer_ban_ip", primary_key: "customer_ban_ip_id", force: true do |t|
    t.string "ip", limit: 40, null: false
  end
    add_index "oc_customer_ban_ip", ["ip"], name: "ip", using: :btree
  end
end
