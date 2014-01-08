class CreateOcProductProfile < ActiveRecord::Migration
  def change
  create_table "oc_product_profile", id: false, force: true do |t|
    t.integer "product_id",        null: false
    t.integer "profile_id",        null: false
    t.integer "customer_group_id", null: false
  end
  end
end
