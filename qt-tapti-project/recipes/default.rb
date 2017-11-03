#
# Cookbook:: qt-tapti-project
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'qt-tapti-project::java'
include_recipe 'qt-tapti-project::usergrp'
include_recipe 'qt-tapti-project::download'
include_recipe 'qt-tapti-project::directory'
include_recipe 'qt-tapti-project::permissions'
include_recipe 'qt-tapti-project::tomcat.conf'
include_recipe 'qt-tapti-project::users.xml'
include_recipe 'qt-tapti-project::deploy'
