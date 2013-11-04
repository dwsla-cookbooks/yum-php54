package "php-mcrypt" do
  not_if "php -m | grep mcrypt"
  action :install
end