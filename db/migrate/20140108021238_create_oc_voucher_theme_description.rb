class CreateOcVoucherThemeDescription < ActiveRecord::Migration
  def change
  create_table "oc_voucher_theme_description", id: false, force: true do |t|
    t.integer "voucher_theme_id",            null: false
    t.integer "language_id",                 null: false
    t.string  "name",             limit: 32, null: false
  end
  end
end
