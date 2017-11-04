template node['qt-project-tapti']['usersfile'] do
  source node['qt-project-tapti']['users.xml']
  mode '0755'
  action :create
  notifies :restart, 'service[tomcat]'
end
# execute 'restart command' do
#  command 'initctl restart tomcat'
#  action :run
# end
