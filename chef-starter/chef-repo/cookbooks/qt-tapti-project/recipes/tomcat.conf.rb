cookbook_file node['qt-project-tapti']['conf_FILE_path'] do
  source node['qt-project-tapti']['conf_FILE']
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'reload configuration' do
  command 'sudo initctl reload-configuration'
  action :run
  not_if { :: File.exist?(node['qt-project-tapti']['FILE']) }
end

service 'tomcat' do
  action :start
end

# execute 'start tomcat' do
#  command 'sudo initctl start tomcat'
#  action :run
#  not_if { :: File.exist?('/home/ubuntu/file.txt') }
# end
file node['qt-project-tapti']['FILE'] do
  content 'keeping an expection so that it will not throw an error saying tomcat already started'
  mode '0755'
  action :create
  only_if { :: File.exist?(node['qt-project-tapti']['conf_FILE']) }
end
