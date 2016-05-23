#
# Cookbook Name:: chef-server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package_url = node['chef-server']['url'] 
package_name = ::File.basename(package_url) 
package_local_path = "#{Chef::Config[:file_cache_path]}/#{package_name}" 

remote_file package_local_path do 
  source package_url 
end 

package package_local_path 

# reconfigure the installation 
execute 'chef-server-ctl reconfigure'
