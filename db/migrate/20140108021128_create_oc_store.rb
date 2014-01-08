class CreateOcStore < ActiveRecord::Migration
  def change
  create_table "oc_store", primary_key: "store_id", force: true do |t|
    t.string "name", limit: 64, null: false
    t.string "url",             null: false
    t.string "ssl",             null: false
  end
  end
end
