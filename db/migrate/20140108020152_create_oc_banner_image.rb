class CreateOcBannerImage < ActiveRecord::Migration
  def change
  create_table "oc_banner_image", primary_key: "banner_image_id", force: true do |t|
    t.integer "banner_id", null: false
    t.string  "link",      null: false
    t.string  "image",     null: false
  end
  end
end
