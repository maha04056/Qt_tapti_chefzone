template '/opt/tomcat/conf/tomcat-users.xml' do
  source 'tomcat-users.xml.erb'
  mode '0755'
  action :create
end
execute 'restart command' do
  command 'initctl restart tomcat'
  action :run
end
