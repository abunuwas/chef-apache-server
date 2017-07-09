#
# Cookbook:: apache-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
    action :install
end

file '/var/www/html/index.html' do
    content '<html><body><h1>Hello Chef gurus!</h1></body></html>'
end

service 'httpd' do
    action [ :enable, :start ]
end


