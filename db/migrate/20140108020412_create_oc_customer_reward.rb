class CreateOcCustomerReward < ActiveRecord::Migration
  def change
  create_table "oc_customer_reward", primary_key: "customer_reward_id", force: true do |t|
    t.integer  "customer_id", default: 0, null: false
    t.integer  "order_id",    default: 0, null: false
    t.text     "description",             null: false
    t.integer  "points",      default: 0, null: false
    t.datetime "date_added",              null: false
  end
  end
end
