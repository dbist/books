#
# Cookbook Name:: nodes
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Print every node name matching the search pattern 

file "#{ENV['HOME']}/hello.txt" do
   content 'Welcome to Chef'
end
