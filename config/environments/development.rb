Unified::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_store = :null_store
  config.cache_classes = true
  #config.reload_classes_only_on_change = true
  #config.watchable_dirs[File.join(config.root, "app/admin")] = ["rb"]

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
  
  config.enable_starttls_auto = true
  
  config.action_mailer.default_url_options = { :host => '50.63.174.43' }
  
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.tls => true,
  config.action_mailer.address => "smtp.gmail.com",
  config.action_mailer.port => 587,
  config.action_mailer.domain => "gmail.com",
  config.action_mailer.authentication => :login,
  config.action_mailer.user_name => "xnet.angostura",
  config.action_mailer.password => "Testing1"
  
end
