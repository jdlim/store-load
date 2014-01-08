class CreateOcProductToCategory < ActiveRecord::Migration
  def change
  create_table "oc_product_to_category", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end
  end
end
