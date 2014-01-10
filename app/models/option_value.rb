class OptionValue < ActiveRecord::Base
	belongs_to :option
	has_one :option_value_description
end
