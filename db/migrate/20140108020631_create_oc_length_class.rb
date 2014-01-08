class CreateOcLengthClass < ActiveRecord::Migration
  def change
  create_table "oc_length_class", primary_key: "length_class_id", force: true do |t|
    t.decimal "value", precision: 15, scale: 8, null: false
  end
  end
end
