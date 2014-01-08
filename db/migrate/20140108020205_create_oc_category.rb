class CreateOcCategory < ActiveRecord::Migration
  def change
  create_table "oc_category", primary_key: "category_id", force: true do |t|
    t.string   "image"
    t.integer  "parent_id",     default: 0, null: false
    t.boolean  "top",                       null: false
    t.integer  "column",                    null: false
    t.integer  "sort_order",    default: 0, null: false
    t.boolean  "status",                    null: false
    t.datetime "date_added",                null: false
    t.datetime "date_modified",             null: false
  end
  end
end
