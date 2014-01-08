class CreateOcCategoryFilter < ActiveRecord::Migration
  def change
  create_table "oc_category_filter", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "filter_id",   null: false
  end
  end
end
