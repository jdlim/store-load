class CreateOcOptionDescription < ActiveRecord::Migration
  def change
  create_table "oc_option_description", id: false, force: true do |t|
    t.integer "option_id",               null: false
    t.integer "language_id",             null: false
    t.string  "name",        limit: 128, null: false
  end
  end
end
