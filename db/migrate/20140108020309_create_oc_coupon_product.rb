class CreateOcCouponProduct < ActiveRecord::Migration
  def change
  create_table "oc_coupon_product", primary_key: "coupon_product_id", force: true do |t|
    t.integer "coupon_id",  null: false
    t.integer "product_id", null: false
  end
  end
end
