class CreateOcProductReward < ActiveRecord::Migration
  def change
  create_table "oc_product_reward", primary_key: "product_reward_id", force: true do |t|
    t.integer "product_id",        default: 0, null: false
    t.integer "customer_group_id", default: 0, null: false
    t.integer "points",            default: 0, null: false
  end
  end
end
