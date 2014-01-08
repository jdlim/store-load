class CreateOcProductToStore < ActiveRecord::Migration
  def change
  create_table "oc_product_to_store", id: false, force: true do |t|
    t.integer "product_id",             null: false
    t.integer "store_id",   default: 0, null: false
  end
  end
end
