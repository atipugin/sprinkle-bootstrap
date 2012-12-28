require File.join(File.dirname(__FILE__), 'base')

load_packages %w()

policy :server, roles: :default do
  # Add policy requirements here.
end

deployment { delivery :capistrano }
