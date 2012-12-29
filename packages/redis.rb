package :redis, provides: :database do
  pre :install, ['add-apt-repository ppa:rwky/redis', 'apt-get update']
  apt 'redis-server'

  verify { has_apt 'redis-server' }
end
