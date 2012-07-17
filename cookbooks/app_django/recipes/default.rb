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
  action [:start]
end


execute "tar" do
  djangotar = ::File.join(::File.dirname(__FILE__), "..", "files", "default", "Django-1.3.tar.gz")
  installation_dir = "/tmp"
  cwd installation_dir
  command "tar zxf #{djangotar}"
  cwd "Django-1.3" 
  command "python setup.py install"
  action :run
end
  
