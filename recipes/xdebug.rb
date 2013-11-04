package "php-pecl-xdebug" do
  not_if "php -m | grep Xdebug"
  action :install
end

cookbook_file "/etc/php.d/xdebug.ini" do
  source "xdebug.ini"
  mode 0755
  owner "root"
  group "root"
end