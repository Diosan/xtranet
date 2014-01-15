# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.override_actionmailer_config = true
  config.mails_from = "xnet.angostura@gmail.com"
  config.site_name = "Angostura Extranet"
  config.allow_guest_checkout = false
  config.allow_ssl_in_staging = true
  config.allow_ssl_in_development_and_test = false
  config.address_requires_state = true
  config.default_country_id = 125
  config.enable_mail_delivery = true
end

#Spree::Auth::Config[:registration_step] = false;

Spree.user_class = "User"

          Rails.application.config.to_prepare do
            require_dependency 'spree/authentication_helpers'
          end
