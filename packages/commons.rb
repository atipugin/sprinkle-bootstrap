require File.join(File.dirname(__FILE__), '../base')

dependencies = [:essential, :git, :curl, :psp, :htop]

package :commons do
  load_packages(dependencies)

  dependencies.each { |d| requires d }
end
