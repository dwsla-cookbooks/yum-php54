package "php-pear" do
  not_if "which pecl"
  action :install
end