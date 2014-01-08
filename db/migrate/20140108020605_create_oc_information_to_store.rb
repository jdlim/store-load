class CreateOcInformationToStore < ActiveRecord::Migration
  def change
  create_table "oc_information_to_store", id: false, force: true do |t|
    t.integer "information_id", null: false
    t.integer "store_id",       null: false
  end
  end
end
