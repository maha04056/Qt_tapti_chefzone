remote_file '/home/ubuntu/tomcat.tar' do
  source 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz'
  mode '0755'
  action :create
end
