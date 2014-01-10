class OptionValueDescription < ActiveRecord::Base
	belongs_to :option_value, :class_name => "OptionValue", :foreign_key => "option_value_id"
end
