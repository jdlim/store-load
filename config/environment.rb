# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
StoreLoad::Application.initialize!

# Disable Database Pluralization
ActiveRecord::Base.pluralize_table_names = false

# Add in prefix for table names
ActiveRecord::Base.table_name_prefix = 'oc_'

# Add in prefix for table primary key
ActiveRecord::Base.primary_key_prefix_type = :table_name_with_underscore

