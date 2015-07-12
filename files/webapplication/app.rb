require "sinatra"

get "/" do
  "webapplication root"
end

get "/webapplication" do
  "webapplication webapplication"
end

get "/webapplication/content" do
  "webapplication webapplication/content"
end
