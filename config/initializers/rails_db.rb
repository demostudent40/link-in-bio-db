if Object.const_defined?('RailsDb')
  RailsDb.setup do |config|
    # enabled or not
    # config.enabled = Rails.env.development?

    # automatic engine routes mounting
    # config.automatic_routes_mount = true

    # set tables which you want to hide ONLY
    config.black_list_tables = ["ar_internal_metadata"]

    # set tables which you want to show ONLY
    # config.white_list_tables = ['posts', 'comments']

    # Enable http basic authentication
    config.http_basic_authentication_enabled = true

    # Enable http basic authentication
    config.http_basic_authentication_user_name = ENV.fetch("RAILS_DB_USERNAME", nil)

    # Enable http basic authentication
    config.http_basic_authentication_password = ENV.fetch("RAILS_DB_PASSWORD", nil)

    # Enable http basic authentication
    # config.verify_access_proc = proc { |controller| true }

    # Sandbox mode (only read-only operations)
    # config.sandbox = false
  end
end
