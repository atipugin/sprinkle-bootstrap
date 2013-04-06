require File.join(File.dirname(__FILE__), 'base')

default_run_options[:pty] = true
ssh_options[:keys] = [File.join(ENV['HOME'], '.ssh', 'id_rsa')]

set :user, $config[:user]
set :password, $config[:password] if $config.has_key?(:password)

$config[:servers].each do |server, settings|
  role server, *settings[:addresses]
end
