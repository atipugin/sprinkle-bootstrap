require File.join(File.dirname(__FILE__), 'base')

packages = [:commons]

policy :server, roles: $config[:servers].keys do
  load_packages(packages)

  packages.each { |p| requires p }
end

deployment { delivery :capistrano }
