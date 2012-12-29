package :postgresql, provides: :database do
  packages = %w(postgresql-9.2 libpq-dev)

  apt packages do
    pre :install, ['add-apt-repository ppa:pitti/postgresql', 'apt-get update']
  end

  requires :python_software_properties

  verify do
    packages.each { |p| has_apt p }
  end
end
