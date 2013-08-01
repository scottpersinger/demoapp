class Account < SalesforceModel
  set_table_name :account

  has_many :contacts, :primary_key => "sfId", :foreign_key => "AccountId"

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
