class CreateOcTaxRateToCustomerGroup < ActiveRecord::Migration
  def change
  create_table "oc_tax_rate_to_customer_group", id: false, force: true do |t|
    t.integer "tax_rate_id",       null: false
    t.integer "customer_group_id", null: false
  end
  end
end
