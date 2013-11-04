package "php-pecl-apc" do
  not_if "php -m | grep apc"
  action :install
end