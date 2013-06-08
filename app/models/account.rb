class Account < ActiveRecord::Base
  set_table_name :account
  attr_protected :no_field_here
end
