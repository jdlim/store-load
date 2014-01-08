class CreateOcCategoryToStore < ActiveRecord::Migration
  def change
 create_table "oc_category_to_store", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "store_id",    null: false
  end
  end
end
