class CreateOcZoneToGeoZone < ActiveRecord::Migration
  def change
  create_table "oc_zone_to_geo_zone", primary_key: "zone_to_geo_zone_id", force: true do |t|
    t.integer  "country_id",                null: false
    t.integer  "zone_id",       default: 0, null: false
    t.integer  "geo_zone_id",               null: false
    t.datetime "date_added",                null: false
    t.datetime "date_modified",             null: false
  end
  end
end
