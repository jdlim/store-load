class CreateOcReturnHistory < ActiveRecord::Migration
  def change
  create_table "oc_return_history", primary_key: "return_history_id", force: true do |t|
    t.integer  "return_id",        null: false
    t.integer  "return_status_id", null: false
    t.boolean  "notify",           null: false
    t.text     "comment",          null: false
    t.datetime "date_added",       null: false
  end
  end
end
