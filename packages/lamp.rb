package :lamp do
  packages = [
    :apache2,
    :apache2_mod_pagespeed,
    :mysql,
    :memcached,
    :php5,
    :php5_apache2,
    :php5_mysql,
    :php5_memcached,
    :php5_curl,
    :php5_gd
  ]

  packages.each { |p| requires p }
end
