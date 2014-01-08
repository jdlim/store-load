class CreateOcCustomer < ActiveRecord::Migration
  def change
  create_table "oc_customer", primary_key: "customer_id", force: true do |t|
    t.integer  "store_id",                     default: 0,     null: false
    t.string   "firstname",         limit: 32,                 null: false
    t.string   "lastname",          limit: 32,                 null: false
    t.string   "email",             limit: 96,                 null: false
    t.string   "telephone",         limit: 32,                 null: false
    t.string   "fax",               limit: 32,                 null: false
    t.string   "password",          limit: 40,                 null: false
    t.string   "salt",              limit: 9,                  null: false
    t.text     "cart"
    t.text     "wishlist"
    t.boolean  "newsletter",                   default: false, null: false
    t.integer  "address_id",                   default: 0,     null: false
    t.integer  "customer_group_id",                            null: false
    t.string   "ip",                limit: 40, default: "0",   null: false
    t.boolean  "status",                                       null: false
    t.boolean  "approved",                                     null: false
    t.string   "token",                                        null: false
    t.datetime "date_added",                                   null: false
  end
  end
end
