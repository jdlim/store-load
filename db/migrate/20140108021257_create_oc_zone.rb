class CreateOcZone < ActiveRecord::Migration
  def change
  create_table "oc_zone", primary_key: "zone_id", force: true do |t|
    t.integer "country_id",                            null: false
    t.string  "name",       limit: 128,                null: false
    t.string  "code",       limit: 32,                 null: false
    t.boolean "status",                 default: true, null: false
  end
  end
end
