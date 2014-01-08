class CreateOcProductAttribute < ActiveRecord::Migration
  def change
  create_table "oc_product_attribute", id: false, force: true do |t|
    t.integer "product_id",   null: false
    t.integer "attribute_id", null: false
    t.integer "language_id",  null: false
    t.text    "text",         null: false
  end
  end
end
