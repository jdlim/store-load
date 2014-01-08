class CreateOcUrlAlias < ActiveRecord::Migration
  def change
  create_table "oc_url_alias", primary_key: "url_alias_id", force: true do |t|
    t.string "query",   null: false
    t.string "keyword", null: false
  end
  end
end
