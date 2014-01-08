class CreateOcWeightClass < ActiveRecord::Migration
  def change
  create_table "oc_weight_class", primary_key: "weight_class_id", force: true do |t|
    t.decimal "value", precision: 15, scale: 8, default: 0.0, null: false
  end
  end
end
