require_recipe "apt"
require_recipe "php"
require_recipe "memcached"
require_recipe "imagemagick"
require_recipe "hosts"

%w{ aptitude git curl vim htop bzip2 gcc make }.each do |a_package|
  package a_package
end

%w{ php5-fpm php5-curl php5-gd php5-mysql php5-memcache php5-sqlite libpcre3-dev }.each do |a_package|
  package a_package
end

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'sites.conf.erb'
  owner  node['nginx']['user']
  group  node['nginx']['group']
  mode   '0644'
  notifies :reload, 'service[nginx]'
end
