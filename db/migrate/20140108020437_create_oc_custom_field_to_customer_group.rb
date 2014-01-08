class CreateOcCustomFieldToCustomerGroup < ActiveRecord::Migration
  def change
  create_table "oc_custom_field_to_customer_group", id: false, force: true do |t|
    t.integer "custom_field_id",   null: false
    t.integer "customer_group_id", null: false
  end
  end
end
