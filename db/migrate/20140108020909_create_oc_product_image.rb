class CreateOcProductImage < ActiveRecord::Migration
  def change
  create_table "oc_product_image", primary_key: "product_image_id", force: true do |t|
    t.integer "product_id",             null: false
    t.string  "image"
    t.integer "sort_order", default: 0, null: false
  end
  end
end
