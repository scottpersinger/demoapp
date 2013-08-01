class SalesforceController < ApplicationController

  def accounts
    @accounts = Account.order('"Name"').limit(20).all()
  end

  def account
    @account = Account.find(params[:id])
    begin
      @contacts = @account.contacts
    rescue
      @contacts = []
    end
  end
end
