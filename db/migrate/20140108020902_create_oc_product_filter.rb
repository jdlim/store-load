class CreateOcProductFilter < ActiveRecord::Migration
  def change
  create_table "oc_product_filter", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "filter_id",  null: false
  end
  end
end
