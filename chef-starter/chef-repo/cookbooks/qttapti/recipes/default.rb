#
# Cookbook:: qttapti
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'qttapti::java'
include_recipe 'qttapti::usergrp'
include_recipe 'qttapti::download'
include_recipe 'qttapti::directory'
include_recipe 'qttapti::permissions'
include_recipe 'qttapti::tomcat.conf'
include_recipe 'qttapti::users.xml'
include_recipe 'qttapti::deploy'
