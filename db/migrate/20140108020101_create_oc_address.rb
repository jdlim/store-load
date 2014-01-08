class CreateOcAddress < ActiveRecord::Migration
  def change
    create_table "oc_address", :primary_key => "address_id", :force => true do |t|
    t.integer "customer_id",                               :null => false
    t.string  "firstname",   :limit => 32,                 :null => false
    t.string  "lastname",    :limit => 32,                 :null => false
    t.string  "company",     :limit => 32,                 :null => false
    t.string  "company_id",  :limit => 32,                 :null => false
    t.string  "tax_id",      :limit => 32,                 :null => false
    t.string  "address_1",   :limit => 128,                :null => false
    t.string  "address_2",   :limit => 128,                :null => false
    t.string  "city",        :limit => 128,                :null => false
    t.string  "postcode",    :limit => 10,                 :null => false
    t.integer "country_id",                 :default => 0, :null => false
    t.integer "zone_id",                    :default => 0, :null => false
	end

	add_index "oc_address", ["customer_id"], :name => "customer_id"

	say "Done with oc_address migration..."
  end

end
