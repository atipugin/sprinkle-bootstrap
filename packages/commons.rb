package :commons do
  packages = [:build_essential, :git, :curl, :htop]

  packages.each { |p| requires p }
end
