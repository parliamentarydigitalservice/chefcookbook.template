#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

if node['platform'] == 'ubuntu'
  include_recipe 'core::linux'
end

if node['platform'] == 'windows'
  include_recipe 'core::windows'
end
