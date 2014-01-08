class CreateOcProductToDownload < ActiveRecord::Migration
  def change
  create_table "oc_product_to_download", id: false, force: true do |t|
    t.integer "product_id",  null: false
    t.integer "download_id", null: false
  end
  end
end
