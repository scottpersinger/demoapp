class SalesforceModel < ActiveRecord::Base
    self.abstract_class = true

    establish_connection ENV['CLOUDCONNECT_URL']
end
