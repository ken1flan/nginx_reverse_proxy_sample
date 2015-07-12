execute "replace webapplication to web2" do
  command <<-EOT
    cd /usr/local/webapplication
    perl -i -pe "s/webapplication/web2/g" app.rb
  EOT
  not_if "grep webapplication /usr/local/webapplication/app.rb"
  user "root"
end
