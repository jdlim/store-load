class CreateOcLengthClassDescription < ActiveRecord::Migration
  def change
  create_table "oc_length_class_description", id: false, force: true do |t|
    t.integer "length_class_id",            null: false
    t.integer "language_id",                null: false
    t.string  "title",           limit: 32, null: false
    t.string  "unit",            limit: 4,  null: false
  end
  end
end
