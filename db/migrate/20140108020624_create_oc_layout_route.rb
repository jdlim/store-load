class CreateOcLayoutRoute < ActiveRecord::Migration
  def change
  create_table "oc_layout_route", primary_key: "layout_route_id", force: true do |t|
    t.integer "layout_id", null: false
    t.integer "store_id",  null: false
    t.string  "route",     null: false
  end
  end
end
