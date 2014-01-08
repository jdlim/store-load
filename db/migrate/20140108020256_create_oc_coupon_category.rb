class CreateOcCouponCategory < ActiveRecord::Migration
  def change
  create_table "oc_coupon_category", id: false, force: true do |t|
    t.integer "coupon_id",   null: false
    t.integer "category_id", null: false
  end
  end
end
