#
# Cookbook Name:: database-cookbook
# Recipe:: redis_recipe
#

# Increase somaxconn to 2048
execute 'increase somaxconn to 2048' do
  user 'root'
  command 'sysctl -w net.core.somaxconn=2048'
end

# Install epel-release package
package 'epel-release'

# Create the redis data directory via directory resource
directory '/opt/tutorial/data/redis' do
    mode 0750
    owner 'root'
    group 'root'
    recursive true
    action :create
end

# This will include the redis2 recipes default and auto
include_recipe 'redis2::default'
include_recipe 'redis2::auto'

# Start Redis service via service resource
service 'redis' do
   action [ :enable, :restart]
end
