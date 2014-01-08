class CreateOcBanner < ActiveRecord::Migration
  def change
  create_table "oc_banner", primary_key: "banner_id", force: true do |t|
    t.string  "name",   limit: 64, null: false
    t.boolean "status",            null: false
  end
  end
end
