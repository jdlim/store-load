class CreateOcReturnReason < ActiveRecord::Migration
  def change
  create_table "oc_return_reason", id: false, force: true do |t|
    t.integer "return_reason_id",                         null: false
    t.integer "language_id",                  default: 0, null: false
    t.string  "name",             limit: 128,             null: false
  end
  end
end
