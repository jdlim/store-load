class CreateOcOrderRecurring < ActiveRecord::Migration
  def change
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
  end
end
