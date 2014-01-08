class CreateOcCustomerOnline < ActiveRecord::Migration
  def change
  create_table "oc_customer_online", primary_key: "ip", force: true do |t|
    t.integer  "customer_id", null: false
    t.text     "url",         null: false
    t.text     "referer",     null: false
    t.datetime "date_added",  null: false
  end
  end
end
