# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
StoreLoad::Application.initialize!

# Disable Database Pluralization
ActiveRecord::Base.pluralize_table_names = false
