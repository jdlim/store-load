class CreateOcReturnAction < ActiveRecord::Migration
  def change
  create_table "oc_return_action", id: false, force: true do |t|
    t.integer "return_action_id",                        null: false
    t.integer "language_id",                 default: 0, null: false
    t.string  "name",             limit: 64,             null: false
  end
  end
end
