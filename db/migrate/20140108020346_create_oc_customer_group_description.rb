class CreateOcCustomerGroupDescription < ActiveRecord::Migration
  def change
  create_table "oc_customer_group_description", id: false, force: true do |t|
    t.integer "customer_group_id",            null: false
    t.integer "language_id",                  null: false
    t.string  "name",              limit: 32, null: false
    t.text    "description",                  null: false
  end
  end
end
