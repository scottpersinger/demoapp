class Contact < SalesforceModel
  set_table_name :contact
  belongs_to :account, :primary_key => 'sfId', :foreign_key => 'AccountId'

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate
end
