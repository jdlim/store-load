class CreateOcCouponHistory < ActiveRecord::Migration
  def change
	create_table "oc_coupon_history", primary_key: "coupon_history_id", force: true do |t|
    t.integer  "coupon_id",                            null: false
    t.integer  "order_id",                             null: false
    t.integer  "customer_id",                          null: false
    t.decimal  "amount",      precision: 15, scale: 4, null: false
    t.datetime "date_added",                           null: false
	end
  end
end
