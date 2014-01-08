class CreateOcOrderFraud < ActiveRecord::Migration
  def change
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
  end
end
