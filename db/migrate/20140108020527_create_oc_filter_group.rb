class CreateOcFilterGroup < ActiveRecord::Migration
  def change
  create_table "oc_filter_group", primary_key: "filter_group_id", force: true do |t|
    t.integer "sort_order", null: false
  end
  end
end
