package :apache2, provides: :webserver do
  packages = %w(apache2-mpm-itk libapache2-mod-rpaf)

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end

package :apache2_mod_pagespeed do
  deb 'https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_i386.deb'
  post :install, 'service apache2 restart'

  verify { has_apt 'mod-pagespeed-stable' }
end
