class CreateOcAttributeDescription < ActiveRecord::Migration
  def change

  create_table "oc_attribute_description", id: false, force: true do |t|
    t.integer "attribute_id",            null: false
    t.integer "language_id",             null: false
    t.string  "name",         limit: 64, null: false
  end
  
  end
end
