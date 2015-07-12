%w(ruby bundler).each do |package_name|
  package package_name do
    user "root"
  end
end

remote_directory "/usr/local/webapplication" do
  source "./files/webapplication"
  user "root"
end

execute "install sinatra" do
  command "cd /usr/local/webapplication; bundle install"
end
