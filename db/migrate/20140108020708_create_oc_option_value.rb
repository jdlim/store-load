class CreateOcOptionValue < ActiveRecord::Migration
  def change
   create_table "oc_option_value", primary_key: "option_value_id", force: true do |t|
    t.integer "option_id",  null: false
    t.string  "image",      null: false
    t.integer "sort_order", null: false
  end
  end
end
