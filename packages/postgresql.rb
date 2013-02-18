package :postgresql, provides: :database do
  packages = %w(postgresql-9.2 libpq-dev)

  requires :python_software_properties

  apt packages do
    pre :install, ['add-apt-repository ppa:pitti/postgresql', 'apt-get update']
  end

  verify do
    packages.each { |p| has_apt p }
  end
end
