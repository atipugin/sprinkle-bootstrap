package :commons do
  packages = [:build_essential, :git, :curl, :htop, :unzip, :apt_show_versions]

  packages.each { |p| requires p }
end
