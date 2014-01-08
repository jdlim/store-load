class CreateOcInformationDescription < ActiveRecord::Migration
  def change
  create_table "oc_information_description", id: false, force: true do |t|
    t.integer "information_id",            null: false
    t.integer "language_id",               null: false
    t.string  "title",          limit: 64, null: false
    t.text    "description",               null: false
  end
  end
end
