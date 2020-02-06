#
# Cookbook:: mysql
# Recipe:: default

mysql_service 'foo' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end

mysql_config 'logging' do
  instance 'instance-1'
  source 'my.cnf.erb'
  action :create
  notifies :restart, 'mysql_service[instance-1]'
end


