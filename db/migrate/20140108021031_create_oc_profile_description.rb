class CreateOcProfileDescription < ActiveRecord::Migration
  def change
  create_table "oc_profile_description", id: false, force: true do |t|
    t.integer "profile_id",  null: false
    t.integer "language_id", null: false
    t.string  "name",        null: false
  end
  end
end
