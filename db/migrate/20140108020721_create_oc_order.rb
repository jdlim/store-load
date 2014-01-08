class CreateOcOrder < ActiveRecord::Migration
  def change
  create_table "oc_order", primary_key: "order_id", force: true do |t|
    t.integer  "invoice_no",                                                   default: 0,   null: false
    t.string   "invoice_prefix",          limit: 26,                                         null: false
    t.integer  "store_id",                                                     default: 0,   null: false
    t.string   "store_name",              limit: 64,                                         null: false
    t.string   "store_url",                                                                  null: false
    t.integer  "customer_id",                                                  default: 0,   null: false
    t.integer  "customer_group_id",                                            default: 0,   null: false
    t.string   "firstname",               limit: 32,                                         null: false
    t.string   "lastname",                limit: 32,                                         null: false
    t.string   "email",                   limit: 96,                                         null: false
    t.string   "telephone",               limit: 32,                                         null: false
    t.string   "fax",                     limit: 32,                                         null: false
    t.string   "payment_firstname",       limit: 32,                                         null: false
    t.string   "payment_lastname",        limit: 32,                                         null: false
    t.string   "payment_company",         limit: 32,                                         null: false
    t.string   "payment_company_id",      limit: 32,                                         null: false
    t.string   "payment_tax_id",          limit: 32,                                         null: false
    t.string   "payment_address_1",       limit: 128,                                        null: false
    t.string   "payment_address_2",       limit: 128,                                        null: false
    t.string   "payment_city",            limit: 128,                                        null: false
    t.string   "payment_postcode",        limit: 10,                                         null: false
    t.string   "payment_country",         limit: 128,                                        null: false
    t.integer  "payment_country_id",                                                         null: false
    t.string   "payment_zone",            limit: 128,                                        null: false
    t.integer  "payment_zone_id",                                                            null: false
    t.text     "payment_address_format",                                                     null: false
    t.string   "payment_method",          limit: 128,                                        null: false
    t.string   "payment_code",            limit: 128,                                        null: false
    t.string   "shipping_firstname",      limit: 32,                                         null: false
    t.string   "shipping_lastname",       limit: 32,                                         null: false
    t.string   "shipping_company",        limit: 32,                                         null: false
    t.string   "shipping_address_1",      limit: 128,                                        null: false
    t.string   "shipping_address_2",      limit: 128,                                        null: false
    t.string   "shipping_city",           limit: 128,                                        null: false
    t.string   "shipping_postcode",       limit: 10,                                         null: false
    t.string   "shipping_country",        limit: 128,                                        null: false
    t.integer  "shipping_country_id",                                                        null: false
    t.string   "shipping_zone",           limit: 128,                                        null: false
    t.integer  "shipping_zone_id",                                                           null: false
    t.text     "shipping_address_format",                                                    null: false
    t.string   "shipping_method",         limit: 128,                                        null: false
    t.string   "shipping_code",           limit: 128,                                        null: false
    t.text     "comment",                                                                    null: false
    t.decimal  "total",                               precision: 15, scale: 4, default: 0.0, null: false
    t.integer  "order_status_id",                                              default: 0,   null: false
    t.integer  "affiliate_id",                                                               null: false
    t.decimal  "commission",                          precision: 15, scale: 4,               null: false
    t.integer  "language_id",                                                                null: false
    t.integer  "currency_id",                                                                null: false
    t.string   "currency_code",           limit: 3,                                          null: false
    t.decimal  "currency_value",                      precision: 15, scale: 8, default: 1.0, null: false
    t.string   "ip",                      limit: 40,                                         null: false
    t.string   "forwarded_ip",            limit: 40,                                         null: false
    t.string   "user_agent",                                                                 null: false
    t.string   "accept_language",                                                            null: false
    t.datetime "date_added",                                                                 null: false
    t.datetime "date_modified",                                                              null: false
  end
  end
end
