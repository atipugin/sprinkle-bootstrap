package :nginx, provides: :webserver do
  requires :python_software_properties

  pre :install, ['add-apt-repository ppa:nginx/stable', 'apt-get update']
  apt 'nginx'

  verify { has_apt 'nginx' }
end
