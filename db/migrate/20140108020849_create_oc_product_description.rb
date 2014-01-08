class CreateOcProductDescription < ActiveRecord::Migration
  def change
  create_table "oc_product_description", id: false, force: true do |t|
    t.integer "product_id",       null: false
    t.integer "language_id",      null: false
    t.string  "name",             null: false
    t.text    "description",      null: false
    t.string  "meta_description", null: false
    t.string  "meta_keyword",     null: false
    t.text    "tag",              null: false
  end

  add_index "oc_product_description", ["name"], name: "name", using: :btree
  end
end
