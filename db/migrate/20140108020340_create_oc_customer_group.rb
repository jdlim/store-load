class CreateOcCustomerGroup < ActiveRecord::Migration
  def change
  create_table "oc_customer_group", primary_key: "customer_group_id", force: true do |t|
    t.integer "approval",            null: false
    t.integer "company_id_display",  null: false
    t.integer "company_id_required", null: false
    t.integer "tax_id_display",      null: false
    t.integer "tax_id_required",     null: false
    t.integer "sort_order",          null: false
  end
  end
end
