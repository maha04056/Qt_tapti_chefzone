# tomcatpath = node['qt-tapti-project']['tomcathome']

execute 'permission' do
  command 'sudo chgrp -R tomcat /opt/tomcat/conf'
  action :run
end
execute 'permission1' do
  command 'sudo chmod g+rwx /opt/tomcat/conf'
  action :run
end
execute 'permission2' do
  command 'sudo chmod g+r /opt/tomcat/conf/*'
  action :run
end
execute 'total permissions' do
  command 'sudo chown -R tomcat /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'
  action :run
end
