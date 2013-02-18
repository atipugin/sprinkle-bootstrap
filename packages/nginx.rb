package :nginx, provides: :webserver do
  requires :python_software_properties

  apt 'nginx' do
    pre :install, ['add-apt-repository ppa:nginx/stable', 'apt-get update']
  end

  verify { has_apt 'nginx' }
end
