pack = node['qt-tapti-project']['package']

apt_update 'update' do
  action :update
end
package pack do
  action :install
end
