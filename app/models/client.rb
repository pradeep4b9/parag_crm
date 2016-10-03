class Client
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  field :website_url, type: String
  field :contact_number, type: String
  field :email_redirect_url, type: String
  field :email_error_url, type: String
  field :user_id, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :client_key, type: String
  field :client_secret, type: String
  field :billing_email, type: String
  field :ip_address, type: String
  field :address, type: String
  field :billing_address, type: String
  field :billing_state, type: String
  field :billing_country, type: String

  
end