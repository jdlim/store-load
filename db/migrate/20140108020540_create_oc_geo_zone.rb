class CreateOcGeoZone < ActiveRecord::Migration
  def change
  create_table "oc_geo_zone", primary_key: "geo_zone_id", force: true do |t|
    t.string   "name",          limit: 32, null: false
    t.string   "description",              null: false
    t.datetime "date_modified",            null: false
    t.datetime "date_added",               null: false
  end
  end
end
