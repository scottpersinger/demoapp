# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130607220747) do

  create_table "_trigger_last_id", :id => false, :force => true do |t|
    t.integer "trigger_log_id"
  end

  create_table "_trigger_log", :force => true do |t|
    t.string   "table_name", :limit => 40
    t.string   "_c5_source", :limit => 40
    t.string   "action",     :limit => 7
    t.datetime "created_at"
    t.integer  "record_id"
    t.string   "values",     :limit => 16384
    t.string   "state",      :limit => 8
    t.integer  "sf_result"
    t.string   "sf_message", :limit => 1024
  end

  add_index "_trigger_log", ["state", "id", "created_at"], :name => "idx__trigger_log_comp_key"
  add_index "_trigger_log", ["table_name", "state"], :name => "idx__trigger_log_name_state"

  create_table "account", :force => true do |t|
    t.string   "ShippingCountry",    :limit => 80
    t.string   "ShippingCity",       :limit => 40
    t.string   "Industry",           :limit => 40
    t.string   "OwnerId",            :limit => 18
    t.string   "Jigsaw",             :limit => 20
    t.string   "ShippingStreet"
    t.string   "BillingState",       :limit => 80
    t.string   "CreatedById",        :limit => 18
    t.string   "BillingCity",        :limit => 40
    t.string   "LastModifiedById",   :limit => 18
    t.string   "Fax",                :limit => 40
    t.string   "Website"
    t.string   "_c5_source",         :limit => 18
    t.string   "BillingPostalCode",  :limit => 20
    t.string   "Name"
    t.string   "ParentId",           :limit => 18
    t.string   "MasterRecordId",     :limit => 18
    t.string   "Phone",              :limit => 40
    t.datetime "LastModifiedDate"
    t.date     "LastActivityDate"
    t.string   "BillingCountry",     :limit => 80
    t.text     "Description"
    t.float    "AnnualRevenue"
    t.string   "ShippingPostalCode", :limit => 20
    t.string   "sfId",               :limit => 18
    t.string   "SicDesc",            :limit => 80
    t.datetime "CreatedDate"
    t.integer  "NumberOfEmployees"
    t.string   "BillingStreet"
    t.boolean  "IsDeleted"
    t.string   "ShippingState",      :limit => 80
    t.string   "AccountSource",      :limit => 40
    t.datetime "SystemModstamp"
    t.string   "JigsawCompanyId",    :limit => 20
    t.string   "Type",               :limit => 40
  end

  add_index "account", ["sfId"], :name => "account_idx_sfId", :unique => true

  create_table "accounts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "c5_versions", :id => false, :force => true do |t|
    t.string  "app",     :limit => 20, :null => false
    t.integer "version"
    t.string  "org_id",  :limit => 60
  end

  create_table "contact", :force => true do |t|
    t.string   "Fax",                :limit => 40
    t.datetime "LastCURequestDate"
    t.string   "Phone",              :limit => 40
    t.string   "FirstName",          :limit => 40
    t.string   "Title",              :limit => 128
    t.string   "OtherStreet"
    t.string   "OwnerId",            :limit => 18
    t.date     "LastActivityDate"
    t.string   "Salutation",         :limit => 40
    t.string   "LastModifiedById",   :limit => 18
    t.string   "OtherPostalCode",    :limit => 20
    t.string   "HomePhone",          :limit => 40
    t.string   "OtherState",         :limit => 80
    t.string   "Name",               :limit => 121
    t.string   "MailingState",       :limit => 80
    t.string   "JigsawContactId",    :limit => 20
    t.string   "Jigsaw",             :limit => 20
    t.string   "ReportsToId",        :limit => 18
    t.string   "EmailBouncedReason"
    t.string   "CreatedById",        :limit => 18
    t.string   "AssistantPhone",     :limit => 40
    t.string   "Email",              :limit => 80
    t.datetime "LastCUUpdateDate"
    t.string   "OtherCity",          :limit => 40
    t.string   "MailingCity",        :limit => 40
    t.string   "OtherCountry",       :limit => 80
    t.string   "AssistantName",      :limit => 40
    t.date     "Birthdate"
    t.string   "MailingCountry",     :limit => 80
    t.string   "MobilePhone",        :limit => 40
    t.text     "Description"
    t.datetime "EmailBouncedDate"
    t.datetime "LastModifiedDate"
    t.string   "AccountId",          :limit => 18
    t.string   "_c5_source",         :limit => 18
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.string   "sfId",               :limit => 18
    t.string   "MailingStreet"
    t.string   "LeadSource",         :limit => 40
    t.string   "Department",         :limit => 80
    t.string   "MasterRecordId",     :limit => 18
    t.string   "OtherPhone",         :limit => 40
    t.string   "MailingPostalCode",  :limit => 20
    t.boolean  "IsDeleted"
    t.string   "LastName",           :limit => 80
  end

  add_index "contact", ["sfId"], :name => "contact_idx_sfId", :unique => true

  create_table "contacts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
