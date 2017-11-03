apt_update 'update' do
  action :update
end
package 'default-jdk' do
  action :install
end
