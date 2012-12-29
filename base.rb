require 'active_support/core_ext/hash/indifferent_access'

$root   = File.dirname(__FILE__)
$config = YAML.load_file(File.join($root, 'config.yml')).symbolize_keys

def load_packages(array)
  array.each { |i| require File.join($root, 'packages', i.to_s) }
end
