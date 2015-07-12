package "nginx" do
  user "root"
end

execute "replace webapplication to web1" do
  command <<-EOT
    cd /usr/local/webapplication
    perl -i -pe "s/webapplication/web1/g" app.rb
  EOT
  not_if "grep webapplication /usr/local/webapplication/app.rb"
  user "root"
end
