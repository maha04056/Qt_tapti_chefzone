cookbook_file '/etc/init/tomcat.conf' do
  source 'tomcat.conf'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'reload configuration' do
  command 'sudo initctl reload-configuration'
  action :run
  not_if { :: File.exist?('/home/ubuntu/file.txt') }
end
execute 'start tomcat' do
  command 'sudo initctl start tomcat'
  action :run
  not_if { :: File.exist?('/home/ubuntu/file.txt') }
end
file '/home/ubuntu/file.txt' do
  content 'keeping an expection so that it will not throw an error saying tomcat already started'
  mode '0755'
  action :create
  only_if { :: File.exist?('/etc/init/tomcat.conf') }
end
