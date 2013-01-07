package :apache2, provides: :webserver do
  packages = %w(apache2-mpm-itk libapache2-mod-rpaf)

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end
