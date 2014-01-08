class CreateOcVoucherTheme < ActiveRecord::Migration
  def change
  create_table "oc_voucher_theme", primary_key: "voucher_theme_id", force: true do |t|
    t.string "image", null: false
  end
  end
end
