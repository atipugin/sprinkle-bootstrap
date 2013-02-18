package :mysql, provides: :database do
  packages = %w(mysql-server-5.5 libmysqlclient-dev)

  requires :python_software_properties

  apt packages do
    pre :install, ['add-apt-repository ppa:nathan-renniewaldock/ppa', 'apt-get update']
  end

  verify do
    packages.each { |p| has_apt p }
  end
end
