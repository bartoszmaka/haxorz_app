# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

  # config.middleware.insert_before 0, "Rack::Cors", :debug => true, :logger => (-> { Rails.logger })  do
  #     allow do
  #       origins "https://mysite.com/"
  #       resource "/api/v1/resources/*", :headers => :any, :methods => [:get, :options]
  #     end
  #   end

run Rails.application
