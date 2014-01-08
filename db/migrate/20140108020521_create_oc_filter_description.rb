class CreateOcFilterDescription < ActiveRecord::Migration
  def change
  create_table "oc_filter_description", id: false, force: true do |t|
    t.integer "filter_id",                  null: false
    t.integer "language_id",                null: false
    t.integer "filter_group_id",            null: false
    t.string  "name",            limit: 64, null: false
  end
  end
end
