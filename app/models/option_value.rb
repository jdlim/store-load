class OptionValue < ActiveRecord::Base
	belongs_to :option
	has_many :option_value_description
end
