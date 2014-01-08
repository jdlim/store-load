class CreateOcCustomerHistory < ActiveRecord::Migration
  def change
  create_table "oc_customer_history", primary_key: "customer_history_id", force: true do |t|
    t.integer  "customer_id", null: false
    t.text     "comment",     null: false
    t.datetime "date_added",  null: false
  end
  end
end
