package :psp do
  apt 'python-software-properties'

  verify { has_apt 'python-software-properties' }
end
