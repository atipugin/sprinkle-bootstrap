require 'active_support/core_ext/hash/indifferent_access'

$config = YAML.load_file(File.join(File.dirname(__FILE__), 'config.yml')).symbolize_keys

def load_packages(array)
  array.each { |i| require File.join(File.dirname(__FILE__), 'packages', i) }
end
