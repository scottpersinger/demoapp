class Contact < ActiveRecord::Base
  set_table_name :contact
  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
