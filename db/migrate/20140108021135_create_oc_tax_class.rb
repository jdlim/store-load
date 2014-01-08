class CreateOcTaxClass < ActiveRecord::Migration
  def change
  create_table "oc_tax_class", primary_key: "tax_class_id", force: true do |t|
    t.string   "title",         limit: 32, null: false
    t.string   "description",              null: false
    t.datetime "date_added",               null: false
    t.datetime "date_modified",            null: false
  end

  end
end
