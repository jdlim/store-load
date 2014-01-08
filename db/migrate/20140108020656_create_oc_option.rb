class CreateOcOption < ActiveRecord::Migration
  def change
  create_table "oc_option", primary_key: "option_id", force: true do |t|
    t.string  "type",       limit: 32, null: false
    t.integer "sort_order",            null: false
  end
  end
end
