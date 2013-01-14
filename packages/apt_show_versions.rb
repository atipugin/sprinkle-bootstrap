package :apt_show_versions do
  apt 'apt-show-versions'

  verify { has_apt 'apt-show-versions' }
end
