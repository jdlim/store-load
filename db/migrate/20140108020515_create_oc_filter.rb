class CreateOcFilter < ActiveRecord::Migration
  def change
  create_table "oc_filter", primary_key: "filter_id", force: true do |t|
    t.integer "filter_group_id", null: false
    t.integer "sort_order",      null: false
  end
  end
end
