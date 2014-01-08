class CreateOcDownload < ActiveRecord::Migration
  def change
  create_table "oc_download", primary_key: "download_id", force: true do |t|
    t.string   "filename",   limit: 128,             null: false
    t.string   "mask",       limit: 128,             null: false
    t.integer  "remaining",              default: 0, null: false
    t.datetime "date_added",                         null: false
  end
  end
end
