package :memcached do
  apt 'memcached'

  verify { has_apt 'memcached' }
end
