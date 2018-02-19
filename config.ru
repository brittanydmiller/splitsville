# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

if Rails.env.development?
  Rails.logger.level = 0
end

run Rails.application
