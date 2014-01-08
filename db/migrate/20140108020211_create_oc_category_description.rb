class CreateOcCategoryDescription < ActiveRecord::Migration
  def change
  create_table "oc_category_description", id: false, force: true do |t|
    t.integer "category_id",      null: false
    t.integer "language_id",      null: false
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
  end
   add_index "oc_category_description", ["name"], name: "name", using: :btree
  end
end
