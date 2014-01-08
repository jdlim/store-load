class CreateOcProductRelated < ActiveRecord::Migration
  def change
  create_table "oc_product_related", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "related_id", null: false
  end
  end
end
