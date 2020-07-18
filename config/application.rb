require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module EdiflyRor
  class Application < Rails::Application
    config.load_defaults 6.0

    config.assets.initialize_on_precompile = false

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get]
      end
    end
  end
end
