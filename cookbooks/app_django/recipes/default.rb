#
# Cookbook Name:: app_django
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
  action [:install]
end

service "httpd" do
  action[:enable,:start]
end


execute "tar" do
  djangotar = ::File.join(::File.dirname(__FILE__), "..", "files", "default", "Django-1.3.tar.gz")
  command "tar zxf #{djangotar}"
  action :run
end
  
