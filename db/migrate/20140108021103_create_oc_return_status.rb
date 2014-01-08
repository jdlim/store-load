class CreateOcReturnStatus < ActiveRecord::Migration
  def change
  create_table "oc_return_status", id: false, force: true do |t|
    t.integer "return_status_id",                        null: false
    t.integer "language_id",                 default: 0, null: false
    t.string  "name",             limit: 32,             null: false
  end
  end
end
