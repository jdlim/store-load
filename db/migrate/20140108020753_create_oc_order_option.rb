class CreateOcOrderOption < ActiveRecord::Migration
  def change
  create_table "oc_order_option", primary_key: "order_option_id", force: true do |t|
    t.integer "order_id",                                       null: false
    t.integer "order_product_id",                               null: false
    t.integer "product_option_id",                              null: false
    t.integer "product_option_value_id",            default: 0, null: false
    t.string  "name",                                           null: false
    t.text    "value",                                          null: false
    t.string  "type",                    limit: 32,             null: false
  end
  end
end
