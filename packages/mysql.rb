package :mysql, provides: :database do
  packages = %w(mysql-server mysql-client libmysqlclient-dev)

  requires :python_software_properties

  pre :install, ['add-apt-repository ppa:nathan-renniewaldock/ppa', 'apt-get update']
  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end
