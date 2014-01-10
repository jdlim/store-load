class Option < ActiveRecord::Base
	has_many :option_value
	has_one :option_description
end
