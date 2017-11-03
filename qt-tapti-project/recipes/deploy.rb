remote_file '/opt/tomcat/webapps/qttapti.war' do
  source 'http://34.214.175.185:8081/artifactory/qttapti/9/target/QTtapti-1.0.war'
  mode '0755'
  action :create
end
execute 'restart command' do
  command 'initctl restart tomcat'
  action :run
end
