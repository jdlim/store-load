class CreateOcLayout < ActiveRecord::Migration
  def change
  create_table "oc_layout", primary_key: "layout_id", force: true do |t|
    t.string "name", limit: 64, null: false
  end
  end
end
