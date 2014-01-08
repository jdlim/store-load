class CreateOcOrderDownload < ActiveRecord::Migration
  def change
  create_table "oc_order_download", primary_key: "order_download_id", force: true do |t|
    t.integer "order_id",                                 null: false
    t.integer "order_product_id",                         null: false
    t.string  "name",             limit: 64,              null: false
    t.string  "filename",         limit: 128,             null: false
    t.string  "mask",             limit: 128,             null: false
    t.integer "remaining",                    default: 0, null: false
  end
  end
end
