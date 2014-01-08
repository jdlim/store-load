class CreateOcExtension < ActiveRecord::Migration
  def change
  create_table "oc_extension", primary_key: "extension_id", force: true do |t|
    t.string "type", limit: 32, null: false
    t.string "code", limit: 32, null: false
  end
  end
end
