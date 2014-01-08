class CreateOcDownloadDescription < ActiveRecord::Migration
  def change
  create_table "oc_download_description", id: false, force: true do |t|
    t.integer "download_id",            null: false
    t.integer "language_id",            null: false
    t.string  "name",        limit: 64, null: false
  end
  end
end
