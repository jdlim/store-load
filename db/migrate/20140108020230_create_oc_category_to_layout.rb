class CreateOcCategoryToLayout < ActiveRecord::Migration
  def change
  create_table "oc_category_to_layout", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "store_id",    null: false
    t.integer "layout_id",   null: false
  end
  end
end
