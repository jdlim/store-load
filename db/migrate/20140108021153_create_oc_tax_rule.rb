class CreateOcTaxRule < ActiveRecord::Migration
  def change
  create_table "oc_tax_rule", primary_key: "tax_rule_id", force: true do |t|
    t.integer "tax_class_id",                        null: false
    t.integer "tax_rate_id",                         null: false
    t.string  "based",        limit: 10,             null: false
    t.integer "priority",                default: 1, null: false
  end
  end
end
