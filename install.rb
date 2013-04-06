require File.join(File.dirname(__FILE__), 'base')

$config[:servers].each do |server, settings|
  policy server, roles: server do
    settings[:packages].map(&:to_sym).each { |p| requires p }
  end
end

deployment { delivery :capistrano }
