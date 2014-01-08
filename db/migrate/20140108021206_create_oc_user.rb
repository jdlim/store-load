class CreateOcUser < ActiveRecord::Migration
  def change
  create_table "oc_user", primary_key: "user_id", force: true do |t|
    t.integer  "user_group_id",            null: false
    t.string   "username",      limit: 20, null: false
    t.string   "password",      limit: 40, null: false
    t.string   "salt",          limit: 9,  null: false
    t.string   "firstname",     limit: 32, null: false
    t.string   "lastname",      limit: 32, null: false
    t.string   "email",         limit: 96, null: false
    t.string   "code",          limit: 40, null: false
    t.string   "ip",            limit: 40, null: false
    t.boolean  "status",                   null: false
    t.datetime "date_added",               null: false
  end
  end
end
