class CreateOcInformationToLayout < ActiveRecord::Migration
  def change
  create_table "oc_information_to_layout", id: false, force: true do |t|
    t.integer "information_id", null: false
    t.integer "store_id",       null: false
    t.integer "layout_id",      null: false
  end
  end
end
