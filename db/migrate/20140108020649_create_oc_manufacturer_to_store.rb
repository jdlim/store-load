class CreateOcManufacturerToStore < ActiveRecord::Migration
  def change
  create_table "oc_manufacturer_to_store", id: false, force: true do |t|
    t.integer "manufacturer_id", null: false
    t.integer "store_id",        null: false
  end
  end
end
