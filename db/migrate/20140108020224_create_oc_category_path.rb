class CreateOcCategoryPath < ActiveRecord::Migration
  def change
 create_table "oc_category_path", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "path_id",     null: false
    t.integer "level",       null: false
  end
  end
end
