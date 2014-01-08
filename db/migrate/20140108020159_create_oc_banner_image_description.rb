class CreateOcBannerImageDescription < ActiveRecord::Migration
  def change
  create_table "oc_banner_image_description", id: false, force: true do |t|
    t.integer "banner_image_id",            null: false
    t.integer "language_id",                null: false
    t.integer "banner_id",                  null: false
    t.string  "title",           limit: 64, null: false
  end
  end
end
