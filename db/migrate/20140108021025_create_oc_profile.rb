class CreateOcProfile < ActiveRecord::Migration
  def change
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
  end
end
