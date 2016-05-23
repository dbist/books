#
# Cookbook Name:: nodes
# Recipe:: cleanup
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file "#{ENV['HOME']}/hello.txt" do
   action :delete
end
