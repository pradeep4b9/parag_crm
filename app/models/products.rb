class Products
  include Mongoid::Document
  include Mongoid::Timestamps

  field :product_name, type: String
  field :product_category, type: String
  field :website_url, type: String
  field :contact_number, type: String
  field :email_redirect_url, type: String
  field :email_error_url, type: String
  field :user_id, type: String
  

  
end