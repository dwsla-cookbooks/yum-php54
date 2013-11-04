package "php-mbstring" do
  not_if "php -m | grep mbstring"
  action :install
end
