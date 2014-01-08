class CreateOcAffiliate < ActiveRecord::Migration
  def change
  
  create_table "oc_affiliate", primary_key: "affiliate_id", force: true do |t|
    t.string   "firstname",           limit: 32,                                        null: false
    t.string   "lastname",            limit: 32,                                        null: false
    t.string   "email",               limit: 96,                                        null: false
    t.string   "telephone",           limit: 32,                                        null: false
    t.string   "fax",                 limit: 32,                                        null: false
    t.string   "password",            limit: 40,                                        null: false
    t.string   "salt",                limit: 9,                                         null: false
    t.string   "company",             limit: 32,                                        null: false
    t.string   "website",                                                               null: false
    t.string   "address_1",           limit: 128,                                       null: false
    t.string   "address_2",           limit: 128,                                       null: false
    t.string   "city",                limit: 128,                                       null: false
    t.string   "postcode",            limit: 10,                                        null: false
    t.integer  "country_id",                                                            null: false
    t.integer  "zone_id",                                                               null: false
    t.string   "code",                limit: 64,                                        null: false
    t.decimal  "commission",                      precision: 4, scale: 2, default: 0.0, null: false
    t.string   "tax",                 limit: 64,                                        null: false
    t.string   "payment",             limit: 6,                                         null: false
    t.string   "cheque",              limit: 100,                                       null: false
    t.string   "paypal",              limit: 64,                                        null: false
    t.string   "bank_name",           limit: 64,                                        null: false
    t.string   "bank_branch_number",  limit: 64,                                        null: false
    t.string   "bank_swift_code",     limit: 64,                                        null: false
    t.string   "bank_account_name",   limit: 64,                                        null: false
    t.string   "bank_account_number", limit: 64,                                        null: false
    t.string   "ip",                  limit: 40,                                        null: false
    t.boolean  "status",                                                                null: false
    t.boolean  "approved",                                                              null: false
    t.datetime "date_added",                                                            null: false
  end
  
  end
end
