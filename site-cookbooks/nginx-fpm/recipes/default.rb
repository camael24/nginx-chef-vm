require_recipe "apt"
require_recipe "php"
require_recipe "memcached"
require_recipe "imagemagick"
require_recipe "hosts"

package "php5-fpm" do
  action :install
end
package "php5-curl" do
  action :install
end

package "php5-gd" do
  action :install
end

package "php5-mysql" do
  action :install
end

package "php5-memcache" do
  action :install
end

package "php5-sqlite" do
  action :install
end

package "libpcre3-dev" do
  action :install
end

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'sites.conf.erb'
  owner  node['nginx']['user']
  group  node['nginx']['group']
  mode   '0644'
  notifies :reload, 'service[nginx]'
end
