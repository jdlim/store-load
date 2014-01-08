class CreateOcProductRecurring < ActiveRecord::Migration
  def change
  create_table "oc_product_recurring", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "store_id",   null: false
  end
  end
end
