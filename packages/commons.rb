package :commons do
  packages = [:build_essential, :git, :curl, :python_software_properties, :htop]

  packages.each { |p| requires p }
end
