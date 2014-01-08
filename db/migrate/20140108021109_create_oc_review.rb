class CreateOcReview < ActiveRecord::Migration
  def change
  create_table "oc_review", primary_key: "review_id", force: true do |t|
    t.integer  "product_id",                               null: false
    t.integer  "customer_id",                              null: false
    t.string   "author",        limit: 64,                 null: false
    t.text     "text",                                     null: false
    t.integer  "rating",                                   null: false
    t.boolean  "status",                   default: false, null: false
    t.datetime "date_added",                               null: false
    t.datetime "date_modified",                            null: false
  end

  add_index "oc_review", ["product_id"], name: "product_id", using: :btree
  end
end
