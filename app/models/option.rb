class Option < ActiveRecord::Base
	has_many :option_value
	has_many :option_description
end
