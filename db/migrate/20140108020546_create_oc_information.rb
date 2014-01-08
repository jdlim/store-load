class CreateOcInformation < ActiveRecord::Migration
  def change
  create_table "oc_information", primary_key: "information_id", force: true do |t|
    t.integer "bottom",     default: 0,    null: false
    t.integer "sort_order", default: 0,    null: false
    t.boolean "status",     default: true, null: false
  end
  end
end
