class CreateOcUserGroup < ActiveRecord::Migration
  def change
  create_table "oc_user_group", primary_key: "user_group_id", force: true do |t|
    t.string "name",       limit: 64, null: false
    t.text   "permission",            null: false
  end
  end
end
