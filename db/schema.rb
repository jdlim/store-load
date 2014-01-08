# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140108021303) do

  create_table "oc_address", primary_key: "address_id", force: true do |t|
    t.integer "customer_id",                         null: false
    t.string  "firstname",   limit: 32,              null: false
    t.string  "lastname",    limit: 32,              null: false
    t.string  "company",     limit: 32,              null: false
    t.string  "company_id",  limit: 32,              null: false
    t.string  "tax_id",      limit: 32,              null: false
    t.string  "address_1",   limit: 128,             null: false
    t.string  "address_2",   limit: 128,             null: false
    t.string  "city",        limit: 128,             null: false
    t.string  "postcode",    limit: 10,              null: false
    t.integer "country_id",              default: 0, null: false
    t.integer "zone_id",                 default: 0, null: false
  end

  add_index "oc_address", ["customer_id"], name: "customer_id", using: :btree

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

  create_table "oc_affiliate_transaction", primary_key: "affiliate_transaction_id", force: true do |t|
    t.integer  "affiliate_id",                          null: false
    t.integer  "order_id",                              null: false
    t.text     "description",                           null: false
    t.decimal  "amount",       precision: 15, scale: 4, null: false
    t.datetime "date_added",                            null: false
  end

  create_table "oc_attribute", primary_key: "attribute_id", force: true do |t|
    t.integer "attribute_group_id", null: false
    t.integer "sort_order",         null: false
  end

  create_table "oc_attribute_description", id: false, force: true do |t|
    t.integer "attribute_id",            null: false
    t.integer "language_id",             null: false
    t.string  "name",         limit: 64, null: false
  end

  create_table "oc_attribute_group", primary_key: "attribute_group_id", force: true do |t|
    t.integer "sort_order", null: false
  end

  create_table "oc_attribute_group_description", id: false, force: true do |t|
    t.integer "attribute_group_id",            null: false
    t.integer "language_id",                   null: false
    t.string  "name",               limit: 64, null: false
  end

  create_table "oc_banner", primary_key: "banner_id", force: true do |t|
    t.string  "name",   limit: 64, null: false
    t.boolean "status",            null: false
  end

  create_table "oc_banner_image", primary_key: "banner_image_id", force: true do |t|
    t.integer "banner_id", null: false
    t.string  "link",      null: false
    t.string  "image",     null: false
  end

  create_table "oc_banner_image_description", id: false, force: true do |t|
    t.integer "banner_image_id",            null: false
    t.integer "language_id",                null: false
    t.integer "banner_id",                  null: false
    t.string  "title",           limit: 64, null: false
  end

  create_table "oc_category", primary_key: "category_id", force: true do |t|
    t.string   "image"
    t.integer  "parent_id",     default: 0, null: false
    t.boolean  "top",                       null: false
    t.integer  "column",                    null: false
    t.integer  "sort_order",    default: 0, null: false
    t.boolean  "status",                    null: false
    t.datetime "date_added",                null: false
    t.datetime "date_modified",             null: false
  end

  create_table "oc_category_description", id: false, force: true do |t|
    t.integer "category_id",      null: false
    t.integer "language_id",      null: false
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
  end

  add_index "oc_category_description", ["name"], name: "name", using: :btree

  create_table "oc_category_filter", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "filter_id",   null: false
  end

  create_table "oc_category_path", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "path_id",     null: false
    t.integer "level",       null: false
  end

  create_table "oc_category_to_layout", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "store_id",    null: false
    t.integer "layout_id",   null: false
  end

  create_table "oc_category_to_store", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "store_id",    null: false
  end

  create_table "oc_country", primary_key: "country_id", force: true do |t|
    t.string  "name",              limit: 128,                null: false
    t.string  "iso_code_2",        limit: 2,                  null: false
    t.string  "iso_code_3",        limit: 3,                  null: false
    t.text    "address_format",                               null: false
    t.boolean "postcode_required",                            null: false
    t.boolean "status",                        default: true, null: false
  end

  create_table "oc_coupon", primary_key: "coupon_id", force: true do |t|
    t.string   "name",          limit: 128,                          null: false
    t.string   "code",          limit: 10,                           null: false
    t.string   "type",          limit: 1,                            null: false
    t.decimal  "discount",                  precision: 15, scale: 4, null: false
    t.boolean  "logged",                                             null: false
    t.boolean  "shipping",                                           null: false
    t.decimal  "total",                     precision: 15, scale: 4, null: false
    t.date     "date_start",                                         null: false
    t.date     "date_end",                                           null: false
    t.integer  "uses_total",                                         null: false
    t.string   "uses_customer", limit: 11,                           null: false
    t.boolean  "status",                                             null: false
    t.datetime "date_added",                                         null: false
  end

  create_table "oc_coupon_category", id: false, force: true do |t|
    t.integer "coupon_id",   null: false
    t.integer "category_id", null: false
  end

  create_table "oc_coupon_history", primary_key: "coupon_history_id", force: true do |t|
    t.integer  "coupon_id",                            null: false
    t.integer  "order_id",                             null: false
    t.integer  "customer_id",                          null: false
    t.decimal  "amount",      precision: 15, scale: 4, null: false
    t.datetime "date_added",                           null: false
  end

  create_table "oc_coupon_product", primary_key: "coupon_product_id", force: true do |t|
    t.integer "coupon_id",  null: false
    t.integer "product_id", null: false
  end

  create_table "oc_currency", primary_key: "currency_id", force: true do |t|
    t.string   "title",         limit: 32, null: false
    t.string   "code",          limit: 3,  null: false
    t.string   "symbol_left",   limit: 12, null: false
    t.string   "symbol_right",  limit: 12, null: false
    t.string   "decimal_place", limit: 1,  null: false
    t.float    "value",                    null: false
    t.boolean  "status",                   null: false
    t.datetime "date_modified",            null: false
  end

  create_table "oc_custom_field", primary_key: "custom_field_id", force: true do |t|
    t.string  "type",       limit: 32, null: false
    t.text    "value",                 null: false
    t.boolean "required",              null: false
    t.string  "location",   limit: 32, null: false
    t.integer "position",              null: false
    t.integer "sort_order",            null: false
  end

  create_table "oc_custom_field_description", id: false, force: true do |t|
    t.integer "custom_field_id",             null: false
    t.integer "language_id",                 null: false
    t.string  "name",            limit: 128, null: false
  end

  create_table "oc_custom_field_to_customer_group", id: false, force: true do |t|
    t.integer "custom_field_id",   null: false
    t.integer "customer_group_id", null: false
  end

  create_table "oc_custom_field_value", primary_key: "custom_field_value_id", force: true do |t|
    t.integer "custom_field_id", null: false
    t.integer "sort_order",      null: false
  end

  create_table "oc_custom_field_value_description", id: false, force: true do |t|
    t.integer "custom_field_value_id",             null: false
    t.integer "language_id",                       null: false
    t.integer "custom_field_id",                   null: false
    t.string  "name",                  limit: 128, null: false
  end

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

  create_table "oc_customer_ban_ip", primary_key: "customer_ban_ip_id", force: true do |t|
    t.string "ip", limit: 40, null: false
  end

  add_index "oc_customer_ban_ip", ["ip"], name: "ip", using: :btree

  create_table "oc_customer_field", id: false, force: true do |t|
    t.integer "customer_id",           null: false
    t.integer "custom_field_id",       null: false
    t.integer "custom_field_value_id", null: false
    t.integer "name",                  null: false
    t.text    "value",                 null: false
    t.integer "sort_order",            null: false
  end

  create_table "oc_customer_group", primary_key: "customer_group_id", force: true do |t|
    t.integer "approval",            null: false
    t.integer "company_id_display",  null: false
    t.integer "company_id_required", null: false
    t.integer "tax_id_display",      null: false
    t.integer "tax_id_required",     null: false
    t.integer "sort_order",          null: false
  end

  create_table "oc_customer_group_description", id: false, force: true do |t|
    t.integer "customer_group_id",            null: false
    t.integer "language_id",                  null: false
    t.string  "name",              limit: 32, null: false
    t.text    "description",                  null: false
  end

  create_table "oc_customer_history", primary_key: "customer_history_id", force: true do |t|
    t.integer  "customer_id", null: false
    t.text     "comment",     null: false
    t.datetime "date_added",  null: false
  end

  create_table "oc_customer_ip", primary_key: "customer_ip_id", force: true do |t|
    t.integer  "customer_id",            null: false
    t.string   "ip",          limit: 40, null: false
    t.datetime "date_added",             null: false
  end

  add_index "oc_customer_ip", ["ip"], name: "ip", using: :btree

  create_table "oc_customer_online", primary_key: "ip", force: true do |t|
    t.integer  "customer_id", null: false
    t.text     "url",         null: false
    t.text     "referer",     null: false
    t.datetime "date_added",  null: false
  end

  create_table "oc_customer_reward", primary_key: "customer_reward_id", force: true do |t|
    t.integer  "customer_id", default: 0, null: false
    t.integer  "order_id",    default: 0, null: false
    t.text     "description",             null: false
    t.integer  "points",      default: 0, null: false
    t.datetime "date_added",              null: false
  end

  create_table "oc_customer_transaction", primary_key: "customer_transaction_id", force: true do |t|
    t.integer  "customer_id",                          null: false
    t.integer  "order_id",                             null: false
    t.text     "description",                          null: false
    t.decimal  "amount",      precision: 15, scale: 4, null: false
    t.datetime "date_added",                           null: false
  end

  create_table "oc_download", primary_key: "download_id", force: true do |t|
    t.string   "filename",   limit: 128,             null: false
    t.string   "mask",       limit: 128,             null: false
    t.integer  "remaining",              default: 0, null: false
    t.datetime "date_added",                         null: false
  end

  create_table "oc_download_description", id: false, force: true do |t|
    t.integer "download_id",            null: false
    t.integer "language_id",            null: false
    t.string  "name",        limit: 64, null: false
  end

  create_table "oc_extension", primary_key: "extension_id", force: true do |t|
    t.string "type", limit: 32, null: false
    t.string "code", limit: 32, null: false
  end

  create_table "oc_filter", primary_key: "filter_id", force: true do |t|
    t.integer "filter_group_id", null: false
    t.integer "sort_order",      null: false
  end

  create_table "oc_filter_description", id: false, force: true do |t|
    t.integer "filter_id",                  null: false
    t.integer "language_id",                null: false
    t.integer "filter_group_id",            null: false
    t.string  "name",            limit: 64, null: false
  end

  create_table "oc_filter_group", primary_key: "filter_group_id", force: true do |t|
    t.integer "sort_order", null: false
  end

  create_table "oc_filter_group_description", id: false, force: true do |t|
    t.integer "filter_group_id",            null: false
    t.integer "language_id",                null: false
    t.string  "name",            limit: 64, null: false
  end

  create_table "oc_geo_zone", primary_key: "geo_zone_id", force: true do |t|
    t.string   "name",          limit: 32, null: false
    t.string   "description",              null: false
    t.datetime "date_modified",            null: false
    t.datetime "date_added",               null: false
  end

  create_table "oc_information", primary_key: "information_id", force: true do |t|
    t.integer "bottom",     default: 0,    null: false
    t.integer "sort_order", default: 0,    null: false
    t.boolean "status",     default: true, null: false
  end

  create_table "oc_information_description", id: false, force: true do |t|
    t.integer "information_id",            null: false
    t.integer "language_id",               null: false
    t.string  "title",          limit: 64, null: false
    t.text    "description",               null: false
  end

  create_table "oc_information_to_layout", id: false, force: true do |t|
    t.integer "information_id", null: false
    t.integer "store_id",       null: false
    t.integer "layout_id",      null: false
  end

  create_table "oc_information_to_store", id: false, force: true do |t|
    t.integer "information_id", null: false
    t.integer "store_id",       null: false
  end

  create_table "oc_language", primary_key: "language_id", force: true do |t|
    t.string  "name",       limit: 32,             null: false
    t.string  "code",       limit: 5,              null: false
    t.string  "locale",                            null: false
    t.string  "image",      limit: 64,             null: false
    t.string  "directory",  limit: 32,             null: false
    t.string  "filename",   limit: 64,             null: false
    t.integer "sort_order",            default: 0, null: false
    t.boolean "status",                            null: false
  end

  add_index "oc_language", ["name"], name: "name", using: :btree

  create_table "oc_layout", primary_key: "layout_id", force: true do |t|
    t.string "name", limit: 64, null: false
  end

  create_table "oc_layout_route", primary_key: "layout_route_id", force: true do |t|
    t.integer "layout_id", null: false
    t.integer "store_id",  null: false
    t.string  "route",     null: false
  end

  create_table "oc_length_class", primary_key: "length_class_id", force: true do |t|
    t.decimal "value", precision: 15, scale: 8, null: false
  end

  create_table "oc_length_class_description", id: false, force: true do |t|
    t.integer "length_class_id",            null: false
    t.integer "language_id",                null: false
    t.string  "title",           limit: 32, null: false
    t.string  "unit",            limit: 4,  null: false
  end

  create_table "oc_manufacturer", primary_key: "manufacturer_id", force: true do |t|
    t.string  "name",       limit: 64, null: false
    t.string  "image"
    t.integer "sort_order",            null: false
  end

  create_table "oc_manufacturer_to_store", id: false, force: true do |t|
    t.integer "manufacturer_id", null: false
    t.integer "store_id",        null: false
  end

  create_table "oc_option", primary_key: "option_id", force: true do |t|
    t.string  "type",       limit: 32, null: false
    t.integer "sort_order",            null: false
  end

  create_table "oc_option_description", id: false, force: true do |t|
    t.integer "option_id",               null: false
    t.integer "language_id",             null: false
    t.string  "name",        limit: 128, null: false
  end

  create_table "oc_option_value", primary_key: "option_value_id", force: true do |t|
    t.integer "option_id",  null: false
    t.string  "image",      null: false
    t.integer "sort_order", null: false
  end

  create_table "oc_option_value_description", id: false, force: true do |t|
    t.integer "option_value_id",             null: false
    t.integer "language_id",                 null: false
    t.integer "option_id",                   null: false
    t.string  "name",            limit: 128, null: false
  end

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

  create_table "oc_order_download", primary_key: "order_download_id", force: true do |t|
    t.integer "order_id",                                 null: false
    t.integer "order_product_id",                         null: false
    t.string  "name",             limit: 64,              null: false
    t.string  "filename",         limit: 128,             null: false
    t.string  "mask",             limit: 128,             null: false
    t.integer "remaining",                    default: 0, null: false
  end

  create_table "oc_order_field", id: false, force: true do |t|
    t.integer "order_id",              null: false
    t.integer "custom_field_id",       null: false
    t.integer "custom_field_value_id", null: false
    t.integer "name",                  null: false
    t.text    "value",                 null: false
    t.integer "sort_order",            null: false
  end

  create_table "oc_order_fraud", primary_key: "order_id", force: true do |t|
    t.integer  "customer_id",                                                            null: false
    t.string   "country_match",                      limit: 3,                           null: false
    t.string   "country_code",                       limit: 2,                           null: false
    t.string   "high_risk_country",                  limit: 3,                           null: false
    t.integer  "distance",                                                               null: false
    t.string   "ip_region",                                                              null: false
    t.string   "ip_city",                                                                null: false
    t.decimal  "ip_latitude",                                   precision: 10, scale: 6, null: false
    t.decimal  "ip_longitude",                                  precision: 10, scale: 6, null: false
    t.string   "ip_isp",                                                                 null: false
    t.string   "ip_org",                                                                 null: false
    t.integer  "ip_asnum",                                                               null: false
    t.string   "ip_user_type",                                                           null: false
    t.string   "ip_country_confidence",              limit: 3,                           null: false
    t.string   "ip_region_confidence",               limit: 3,                           null: false
    t.string   "ip_city_confidence",                 limit: 3,                           null: false
    t.string   "ip_postal_confidence",               limit: 3,                           null: false
    t.string   "ip_postal_code",                     limit: 10,                          null: false
    t.integer  "ip_accuracy_radius",                                                     null: false
    t.string   "ip_net_speed_cell",                                                      null: false
    t.integer  "ip_metro_code",                                                          null: false
    t.integer  "ip_area_code",                                                           null: false
    t.string   "ip_time_zone",                                                           null: false
    t.string   "ip_region_name",                                                         null: false
    t.string   "ip_domain",                                                              null: false
    t.string   "ip_country_name",                                                        null: false
    t.string   "ip_continent_code",                  limit: 2,                           null: false
    t.string   "ip_corporate_proxy",                 limit: 3,                           null: false
    t.string   "anonymous_proxy",                    limit: 3,                           null: false
    t.integer  "proxy_score",                                                            null: false
    t.string   "is_trans_proxy",                     limit: 3,                           null: false
    t.string   "free_mail",                          limit: 3,                           null: false
    t.string   "carder_email",                       limit: 3,                           null: false
    t.string   "high_risk_username",                 limit: 3,                           null: false
    t.string   "high_risk_password",                 limit: 3,                           null: false
    t.string   "bin_match",                          limit: 10,                          null: false
    t.string   "bin_country",                        limit: 2,                           null: false
    t.string   "bin_name_match",                     limit: 3,                           null: false
    t.string   "bin_name",                                                               null: false
    t.string   "bin_phone_match",                    limit: 3,                           null: false
    t.string   "bin_phone",                          limit: 32,                          null: false
    t.string   "customer_phone_in_billing_location", limit: 8,                           null: false
    t.string   "ship_forward",                       limit: 3,                           null: false
    t.string   "city_postal_match",                  limit: 3,                           null: false
    t.string   "ship_city_postal_match",             limit: 3,                           null: false
    t.decimal  "score",                                         precision: 10, scale: 5, null: false
    t.text     "explanation",                                                            null: false
    t.decimal  "risk_score",                                    precision: 10, scale: 5, null: false
    t.integer  "queries_remaining",                                                      null: false
    t.string   "maxmind_id",                         limit: 8,                           null: false
    t.text     "error",                                                                  null: false
    t.datetime "date_added",                                                             null: false
  end

  create_table "oc_order_history", primary_key: "order_history_id", force: true do |t|
    t.integer  "order_id",                        null: false
    t.integer  "order_status_id",                 null: false
    t.boolean  "notify",          default: false, null: false
    t.text     "comment",                         null: false
    t.datetime "date_added",                      null: false
  end

  create_table "oc_order_option", primary_key: "order_option_id", force: true do |t|
    t.integer "order_id",                                       null: false
    t.integer "order_product_id",                               null: false
    t.integer "product_option_id",                              null: false
    t.integer "product_option_value_id",            default: 0, null: false
    t.string  "name",                                           null: false
    t.text    "value",                                          null: false
    t.string  "type",                    limit: 32,             null: false
  end

  create_table "oc_order_product", primary_key: "order_product_id", force: true do |t|
    t.integer "order_id",                                                     null: false
    t.integer "product_id",                                                   null: false
    t.string  "name",                                                         null: false
    t.string  "model",      limit: 64,                                        null: false
    t.integer "quantity",                                                     null: false
    t.decimal "price",                 precision: 15, scale: 4, default: 0.0, null: false
    t.decimal "total",                 precision: 15, scale: 4, default: 0.0, null: false
    t.decimal "tax",                   precision: 15, scale: 4, default: 0.0, null: false
    t.integer "reward",                                                       null: false
  end

  create_table "oc_order_recurring", primary_key: "order_recurring_id", force: true do |t|
    t.integer  "order_id",                                                null: false
    t.datetime "created",                                                 null: false
    t.integer  "status",              limit: 1,                           null: false
    t.integer  "product_id",                                              null: false
    t.string   "product_name",                                            null: false
    t.integer  "product_quantity",                                        null: false
    t.integer  "profile_id",                                              null: false
    t.string   "profile_name",                                            null: false
    t.string   "profile_description",                                     null: false
    t.string   "recurring_frequency", limit: 25,                          null: false
    t.integer  "recurring_cycle",     limit: 2,                           null: false
    t.integer  "recurring_duration",  limit: 2,                           null: false
    t.decimal  "recurring_price",                precision: 10, scale: 4, null: false
    t.boolean  "trial",                                                   null: false
    t.string   "trial_frequency",     limit: 25,                          null: false
    t.integer  "trial_cycle",         limit: 2,                           null: false
    t.integer  "trial_duration",      limit: 2,                           null: false
    t.decimal  "trial_price",                    precision: 10, scale: 4, null: false
    t.string   "profile_reference",                                       null: false
  end

  create_table "oc_order_recurring_transaction", primary_key: "order_recurring_transaction_id", force: true do |t|
    t.integer  "order_recurring_id",                          null: false
    t.datetime "created",                                     null: false
    t.decimal  "amount",             precision: 10, scale: 4, null: false
    t.string   "type",                                        null: false
  end

  create_table "oc_order_status", id: false, force: true do |t|
    t.integer "order_status_id",            null: false
    t.integer "language_id",                null: false
    t.string  "name",            limit: 32, null: false
  end

  create_table "oc_order_total", primary_key: "order_total_id", force: true do |t|
    t.integer "order_id",                                                     null: false
    t.string  "code",       limit: 32,                                        null: false
    t.string  "title",                                                        null: false
    t.string  "text",                                                         null: false
    t.decimal "value",                 precision: 15, scale: 4, default: 0.0, null: false
    t.integer "sort_order",                                                   null: false
  end

  add_index "oc_order_total", ["order_id"], name: "idx_orders_total_orders_id", using: :btree

  create_table "oc_order_voucher", primary_key: "order_voucher_id", force: true do |t|
    t.integer "order_id",                                             null: false
    t.integer "voucher_id",                                           null: false
    t.string  "description",                                          null: false
    t.string  "code",             limit: 10,                          null: false
    t.string  "from_name",        limit: 64,                          null: false
    t.string  "from_email",       limit: 96,                          null: false
    t.string  "to_name",          limit: 64,                          null: false
    t.string  "to_email",         limit: 96,                          null: false
    t.integer "voucher_theme_id",                                     null: false
    t.text    "message",                                              null: false
    t.decimal "amount",                      precision: 15, scale: 4, null: false
  end

  create_table "oc_product", primary_key: "product_id", force: true do |t|
    t.string   "model",           limit: 64,                                           null: false
    t.string   "sku",             limit: 64,                                           null: false
    t.string   "upc",             limit: 12,                                           null: false
    t.string   "ean",             limit: 14,                                           null: false
    t.string   "jan",             limit: 13,                                           null: false
    t.string   "isbn",            limit: 13,                                           null: false
    t.string   "mpn",             limit: 64,                                           null: false
    t.string   "location",        limit: 128,                                          null: false
    t.integer  "quantity",                                             default: 0,     null: false
    t.integer  "stock_status_id",                                                      null: false
    t.string   "image"
    t.integer  "manufacturer_id",                                                      null: false
    t.boolean  "shipping",                                             default: true,  null: false
    t.decimal  "price",                       precision: 15, scale: 4, default: 0.0,   null: false
    t.integer  "points",                                               default: 0,     null: false
    t.integer  "tax_class_id",                                                         null: false
    t.date     "date_available",                                                       null: false
    t.decimal  "weight",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.integer  "weight_class_id",                                      default: 0,     null: false
    t.decimal  "length",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.decimal  "width",                       precision: 15, scale: 8, default: 0.0,   null: false
    t.decimal  "height",                      precision: 15, scale: 8, default: 0.0,   null: false
    t.integer  "length_class_id",                                      default: 0,     null: false
    t.boolean  "subtract",                                             default: true,  null: false
    t.integer  "minimum",                                              default: 1,     null: false
    t.integer  "sort_order",                                           default: 0,     null: false
    t.boolean  "status",                                               default: false, null: false
    t.datetime "date_added",                                                           null: false
    t.datetime "date_modified",                                                        null: false
    t.integer  "viewed",                                               default: 0,     null: false
  end

  create_table "oc_product_attribute", id: false, force: true do |t|
    t.integer "product_id",   null: false
    t.integer "attribute_id", null: false
    t.integer "language_id",  null: false
    t.text    "text",         null: false
  end

  create_table "oc_product_description", id: false, force: true do |t|
    t.integer "product_id",       null: false
    t.integer "language_id",      null: false
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
    t.text    "tag",              null: false
  end

  add_index "oc_product_description", ["name"], name: "name", using: :btree

  create_table "oc_product_discount", primary_key: "product_discount_id", force: true do |t|
    t.integer "product_id",                                               null: false
    t.integer "customer_group_id",                                        null: false
    t.integer "quantity",                                   default: 0,   null: false
    t.integer "priority",                                   default: 1,   null: false
    t.decimal "price",             precision: 15, scale: 4, default: 0.0, null: false
    t.date    "date_start",                                               null: false
    t.date    "date_end",                                                 null: false
  end

  add_index "oc_product_discount", ["product_id"], name: "product_id", using: :btree

  create_table "oc_product_filter", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "filter_id",  null: false
  end

  create_table "oc_product_image", primary_key: "product_image_id", force: true do |t|
    t.integer "product_id",             null: false
    t.string  "image"
    t.integer "sort_order", default: 0, null: false
  end

  create_table "oc_product_option", primary_key: "product_option_id", force: true do |t|
    t.integer "product_id",   null: false
    t.integer "option_id",    null: false
    t.text    "option_value", null: false
    t.boolean "required",     null: false
  end

  create_table "oc_product_option_value", primary_key: "product_option_value_id", force: true do |t|
    t.integer "product_option_id",                                    null: false
    t.integer "product_id",                                           null: false
    t.integer "option_id",                                            null: false
    t.integer "option_value_id",                                      null: false
    t.integer "quantity",                                             null: false
    t.boolean "subtract",                                             null: false
    t.decimal "price",                       precision: 15, scale: 4, null: false
    t.string  "price_prefix",      limit: 1,                          null: false
    t.integer "points",                                               null: false
    t.string  "points_prefix",     limit: 1,                          null: false
    t.decimal "weight",                      precision: 15, scale: 8, null: false
    t.string  "weight_prefix",     limit: 1,                          null: false
  end

  create_table "oc_product_profile", id: false, force: true do |t|
    t.integer "product_id",        null: false
    t.integer "profile_id",        null: false
    t.integer "customer_group_id", null: false
  end

  create_table "oc_product_recurring", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "store_id",   null: false
  end

  create_table "oc_product_related", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "related_id", null: false
  end

  create_table "oc_product_reward", primary_key: "product_reward_id", force: true do |t|
    t.integer "product_id",        default: 0, null: false
    t.integer "customer_group_id", default: 0, null: false
    t.integer "points",            default: 0, null: false
  end

  create_table "oc_product_special", primary_key: "product_special_id", force: true do |t|
    t.integer "product_id",                                               null: false
    t.integer "customer_group_id",                                        null: false
    t.integer "priority",                                   default: 1,   null: false
    t.decimal "price",             precision: 15, scale: 4, default: 0.0, null: false
    t.date    "date_start",                                               null: false
    t.date    "date_end",                                                 null: false
  end

  add_index "oc_product_special", ["product_id"], name: "product_id", using: :btree

  create_table "oc_product_to_category", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "oc_product_to_download", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "download_id", null: false
  end

  create_table "oc_product_to_layout", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "store_id",   null: false
    t.integer "layout_id",  null: false
  end

  create_table "oc_product_to_store", id: false, force: true do |t|
    t.integer "product_id",             null: false
    t.integer "store_id",   default: 0, null: false
  end

  create_table "oc_profile", primary_key: "profile_id", force: true do |t|
    t.integer "sort_order",                                          null: false
    t.integer "status",          limit: 1,                           null: false
    t.decimal "price",                      precision: 10, scale: 4, null: false
    t.string  "frequency",       limit: 10,                          null: false
    t.integer "duration",                                            null: false
    t.integer "cycle",                                               null: false
    t.integer "trial_status",    limit: 1,                           null: false
    t.decimal "trial_price",                precision: 10, scale: 4, null: false
    t.string  "trial_frequency", limit: 10,                          null: false
    t.integer "trial_duration",                                      null: false
    t.integer "trial_cycle",                                         null: false
  end

  create_table "oc_profile_description", id: false, force: true do |t|
    t.integer "profile_id",  null: false
    t.integer "language_id", null: false
    t.string  "name",        null: false
  end

  create_table "oc_return", primary_key: "return_id", force: true do |t|
    t.integer  "order_id",                    null: false
    t.integer  "product_id",                  null: false
    t.integer  "customer_id",                 null: false
    t.string   "firstname",        limit: 32, null: false
    t.string   "lastname",         limit: 32, null: false
    t.string   "email",            limit: 96, null: false
    t.string   "telephone",        limit: 32, null: false
    t.string   "product",                     null: false
    t.string   "model",            limit: 64, null: false
    t.integer  "quantity",                    null: false
    t.boolean  "opened",                      null: false
    t.integer  "return_reason_id",            null: false
    t.integer  "return_action_id",            null: false
    t.integer  "return_status_id",            null: false
    t.text     "comment"
    t.date     "date_ordered",                null: false
    t.datetime "date_added",                  null: false
    t.datetime "date_modified",               null: false
  end

  create_table "oc_return_action", id: false, force: true do |t|
    t.integer "return_action_id",                        null: false
    t.integer "language_id",                 default: 0, null: false
    t.string  "name",             limit: 64,             null: false
  end

  create_table "oc_return_history", primary_key: "return_history_id", force: true do |t|
    t.integer  "return_id",        null: false
    t.integer  "return_status_id", null: false
    t.boolean  "notify",           null: false
    t.text     "comment",          null: false
    t.datetime "date_added",       null: false
  end

  create_table "oc_return_reason", id: false, force: true do |t|
    t.integer "return_reason_id",                         null: false
    t.integer "language_id",                  default: 0, null: false
    t.string  "name",             limit: 128,             null: false
  end

  create_table "oc_return_status", id: false, force: true do |t|
    t.integer "return_status_id",                        null: false
    t.integer "language_id",                 default: 0, null: false
    t.string  "name",             limit: 32,             null: false
  end

  create_table "oc_review", primary_key: "review_id", force: true do |t|
    t.integer  "product_id",                               null: false
    t.integer  "customer_id",                              null: false
    t.string   "author",        limit: 64,                 null: false
    t.text     "text",                                     null: false
    t.integer  "rating",                                   null: false
    t.boolean  "status",                   default: false, null: false
    t.datetime "date_added",                               null: false
    t.datetime "date_modified",                            null: false
  end

  add_index "oc_review", ["product_id"], name: "product_id", using: :btree

  create_table "oc_setting", primary_key: "setting_id", force: true do |t|
    t.integer "store_id",              default: 0, null: false
    t.string  "group",      limit: 32,             null: false
    t.string  "key",        limit: 64,             null: false
    t.text    "value",                             null: false
    t.boolean "serialized",                        null: false
  end

  create_table "oc_stock_status", id: false, force: true do |t|
    t.integer "stock_status_id",            null: false
    t.integer "language_id",                null: false
    t.string  "name",            limit: 32, null: false
  end

  create_table "oc_store", primary_key: "store_id", force: true do |t|
    t.string "name", limit: 64, null: false
    t.string "url",             null: false
    t.string "ssl",             null: false
  end

  create_table "oc_tax_class", primary_key: "tax_class_id", force: true do |t|
    t.string   "title",         limit: 32, null: false
    t.string   "description",              null: false
    t.datetime "date_added",               null: false
    t.datetime "date_modified",            null: false
  end

  create_table "oc_tax_rate", primary_key: "tax_rate_id", force: true do |t|
    t.integer  "geo_zone_id",                                       default: 0,   null: false
    t.string   "name",          limit: 32,                                        null: false
    t.decimal  "rate",                     precision: 15, scale: 4, default: 0.0, null: false
    t.string   "type",          limit: 1,                                         null: false
    t.datetime "date_added",                                                      null: false
    t.datetime "date_modified",                                                   null: false
  end

  create_table "oc_tax_rate_to_customer_group", id: false, force: true do |t|
    t.integer "tax_rate_id",       null: false
    t.integer "customer_group_id", null: false
  end

  create_table "oc_tax_rule", primary_key: "tax_rule_id", force: true do |t|
    t.integer "tax_class_id",                        null: false
    t.integer "tax_rate_id",                         null: false
    t.string  "based",        limit: 10,             null: false
    t.integer "priority",                default: 1, null: false
  end

  create_table "oc_url_alias", primary_key: "url_alias_id", force: true do |t|
    t.string "query",   null: false
    t.string "keyword", null: false
  end

  create_table "oc_user", primary_key: "user_id", force: true do |t|
    t.integer  "user_group_id",            null: false
    t.string   "username",      limit: 20, null: false
    t.string   "password",      limit: 40, null: false
    t.string   "salt",          limit: 9,  null: false
    t.string   "firstname",     limit: 32, null: false
    t.string   "lastname",      limit: 32, null: false
    t.string   "email",         limit: 96, null: false
    t.string   "code",          limit: 40, null: false
    t.string   "ip",            limit: 40, null: false
    t.boolean  "status",                   null: false
    t.datetime "date_added",               null: false
  end

  create_table "oc_user_group", primary_key: "user_group_id", force: true do |t|
    t.string "name",       limit: 64, null: false
    t.text   "permission",            null: false
  end

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

  create_table "oc_voucher_history", primary_key: "voucher_history_id", force: true do |t|
    t.integer  "voucher_id",                          null: false
    t.integer  "order_id",                            null: false
    t.decimal  "amount",     precision: 15, scale: 4, null: false
    t.datetime "date_added",                          null: false
  end

  create_table "oc_voucher_theme", primary_key: "voucher_theme_id", force: true do |t|
    t.string "image", null: false
  end

  create_table "oc_voucher_theme_description", id: false, force: true do |t|
    t.integer "voucher_theme_id",            null: false
    t.integer "language_id",                 null: false
    t.string  "name",             limit: 32, null: false
  end

  create_table "oc_weight_class", primary_key: "weight_class_id", force: true do |t|
    t.decimal "value", precision: 15, scale: 8, default: 0.0, null: false
  end

  create_table "oc_weight_class_description", id: false, force: true do |t|
    t.integer "weight_class_id",            null: false
    t.integer "language_id",                null: false
    t.string  "title",           limit: 32, null: false
    t.string  "unit",            limit: 4,  null: false
  end

  create_table "oc_zone", primary_key: "zone_id", force: true do |t|
    t.integer "country_id",                            null: false
    t.string  "name",       limit: 128,                null: false
    t.string  "code",       limit: 32,                 null: false
    t.boolean "status",                 default: true, null: false
  end

  create_table "oc_zone_to_geo_zone", primary_key: "zone_to_geo_zone_id", force: true do |t|
    t.integer  "country_id",                null: false
    t.integer  "zone_id",       default: 0, null: false
    t.integer  "geo_zone_id",               null: false
    t.datetime "date_added",                null: false
    t.datetime "date_modified",             null: false
  end

end
