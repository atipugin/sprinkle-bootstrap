packages = [:build_essential, :git, :curl, :python_software_properties, :htop]

package :commons do
  load_packages(packages)

  packages.each { |p| requires p }
end
