class Account < ActiveRecord::Base
  set_table_name :account
  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
