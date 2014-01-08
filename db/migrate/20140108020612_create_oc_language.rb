class CreateOcLanguage < ActiveRecord::Migration
  def change
  create_table "oc_language", primary_key: "language_id", force: true do |t|
    t.string  "name",       limit: 32,             null: false
    t.string  "code",       limit: 5,              null: false
    t.string  "locale",                            null: false
    t.string  "image",      limit: 64,             null: false
    t.string  "directory",  limit: 32,             null: false
    t.string  "filename",   limit: 64,             null: false
    t.integer "sort_order",            default: 0, null: false
    t.boolean "status",                            null: false
  end

  add_index "oc_language", ["name"], name: "name", using: :btree
  end
end
