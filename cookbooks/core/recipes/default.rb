#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright 2016, Parliamentary Digital Service
#
# All rights reserved - Do Not Redistribute
#

if platform?('windows')

  include_recipe 'core::windows'

else

end