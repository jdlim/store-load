class CreateOcOrderHistory < ActiveRecord::Migration
  def change
  create_table "oc_order_history", primary_key: "order_history_id", force: true do |t|
    t.integer  "order_id",                        null: false
    t.integer  "order_status_id",                 null: false
    t.boolean  "notify",          default: false, null: false
    t.text     "comment",                         null: false
    t.datetime "date_added",                      null: false
  end
  end
end
