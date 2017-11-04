remote_file node['qt-project-tapti']['war_url_path'] do
  source node['qt-project-tapti']['war_url']
  mode '0755'
  action :create
  notifies :restart, 'service[tomcat]'
end
# execute 'restart command' do
#  command 'initctl restart tomcat'
#  action :run
# end
