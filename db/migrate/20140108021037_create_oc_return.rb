class CreateOcReturn < ActiveRecord::Migration
  def change
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
  end
end
