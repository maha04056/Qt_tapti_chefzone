remote_file node['qt-tapti-project']['home'] do
  source node['qt-project-tapti']['tar_url']
  mode '0755'
  action :create
end
