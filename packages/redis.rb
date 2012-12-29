package :redis, provides: :database do
  apt 'redis-server' do
    pre :install, ['add-apt-repository ppa:rwky/redis', 'apt-get update']
  end

  verify { has_apt 'redis-server' }
end
