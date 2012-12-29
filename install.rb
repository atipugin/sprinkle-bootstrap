require File.join(File.dirname(__FILE__), 'base')

policy :server, roles: $config[:servers].keys do
  packages = [:commons]

  packages.each { |p| requires p }
end

deployment { delivery :capistrano }
