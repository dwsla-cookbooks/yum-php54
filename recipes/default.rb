#
# Cookbook Name:: yum-php54
# Recipe:: default
#
# Copyright 2013, Diamond Web Services
#
# All rights reserved - Do Not Redistribute
#

package "php-devel" do
  action :nothing
end

package "php" do
  not_if "which php"
  action :install
  notifies :install, "package[php-devel]", :immediately
end