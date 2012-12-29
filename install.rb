require File.join(File.dirname(__FILE__), 'base')

policy :server, roles: $config[:servers].keys do
  packages = [:commons, :database]

  packages.each { |p| requires p }
end

deployment { delivery :capistrano }
