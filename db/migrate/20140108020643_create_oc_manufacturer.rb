class CreateOcManufacturer < ActiveRecord::Migration
  def change
  create_table "oc_manufacturer", primary_key: "manufacturer_id", force: true do |t|
    t.string  "name",       limit: 64, null: false
    t.string  "image"
    t.integer "sort_order",            null: false
  end
  end
end
