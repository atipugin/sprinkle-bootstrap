require File.join(File.dirname(__FILE__), 'base')

default_run_options[:pty] = true
ssh_options[:keys] = [File.join(ENV['HOME'], '.ssh', 'id_rsa')]

set :user, $config[:user]
set :password, $config[:password]

$config[:servers].each do |name, address|
  role name, address
end
