class OptionDescription < ActiveRecord::Base
	belongs_to :option, :class_name => "Option", :foreign_key => "option_id", :primary_key => "option_id"
end
