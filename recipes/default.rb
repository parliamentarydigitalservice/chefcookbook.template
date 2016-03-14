#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Don't do this - should throw FoodCritic (FC001: Use strings in preference to symbols to access node attributes)
#package node[:cookbook][:package] do
#  action :install
#end

Chef::Log.info 'Installing chocolatey ...'
include_recipe 'chocolatey'

Chef::Log.info 'Installing chef-client and set its interval ...'
node.override['chef_client']['interval'] = '2'
include_recipe 'chef-client'
