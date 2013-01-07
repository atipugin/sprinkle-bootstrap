package :php5 do
  packages = %w(php5 php5-suhosin php5-dev php-pear)

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end

package :php5_apache2 do
  requires :php5
  requires :apache2

  apt 'libapache2-mod-php5'

  verify { has_apt 'libapache2-mod-php5' }
end

package :php5_mysql do
  requires :php5
  requires :mysql

  apt 'php5-mysql'

  verify { has_apt 'php5-mysql' }
end

package :php5_pgsql do
  requires :php5
  requires :postgresql

  apt 'php5-pgsql'

  verify { has_apt 'php5-pgsql' }
end

package :php5_curl do
  requires :php5
  requires :curl

  apt 'php5-curl'

  verify { has_apt 'php5-curl' }
end

package :php5_gd do
  requires :php5

  apt 'php5-gd'

  verify { has_apt 'php5-gd' }
end

package :php5_memcached do
  requires :php5
  requires :memcached

  apt 'php5-memcached'

  verify { has_apt 'php5-memcached' }
end
