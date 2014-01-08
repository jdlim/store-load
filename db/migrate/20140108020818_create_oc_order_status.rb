class CreateOcOrderStatus < ActiveRecord::Migration
  def change
  create_table "oc_order_status", id: false, force: true do |t|
    t.integer "order_status_id",            null: false
    t.integer "language_id",                null: false
    t.string  "name",            limit: 32, null: false
  end
  end
end
