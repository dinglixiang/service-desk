# Load the rails application
require File.expand_path('../application', __FILE__)

CASClient::Frameworks::Rails::Filter.configure(
  :cas_base_url => "http://sso.zhiyisoft.com/",
  :username_session_key => :login,
  :extra_attributes_session_key => :login_extra_attributes,
  :enable_single_sign_out => true,
  :authenticate_on_every_request => false
)

# Initialize the rails application
ServiceDesk::Application.initialize!
