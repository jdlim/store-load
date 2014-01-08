class CreateOcCountry < ActiveRecord::Migration
  def change
  create_table "oc_country", primary_key: "country_id", force: true do |t|
    t.string  "name",              limit: 128,                null: false
    t.string  "iso_code_2",        limit: 2,                  null: false
    t.string  "iso_code_3",        limit: 3,                  null: false
    t.text    "address_format",                               null: false
    t.boolean "postcode_required",                            null: false
    t.boolean "status",                        default: true, null: false
  end
  end
end
