class CreateOcSetting < ActiveRecord::Migration
  def change
  create_table "oc_setting", primary_key: "setting_id", force: true do |t|
    t.integer "store_id",              default: 0, null: false
    t.string  "group",      limit: 32,             null: false
    t.string  "key",        limit: 64,             null: false
    t.text    "value",                             null: false
    t.boolean "serialized",                        null: false
  end
  end
end
