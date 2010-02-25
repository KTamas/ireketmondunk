require 'sinatra'
require 'twitter' 
require 'yaml'


get '/' do
  @irek = YAML::load(File.open('WEB-INF/irek.yaml'))
  erb :index
end

get '/update' do
  @irek = YAML::load(File.open('WEB-INF/irek.yaml'))
  client = Twitter::Client.new(:login => 'ireketmondunk', :password => '')
  status = client.status(:post, @irek[rand(@irek.size)])
end

__END__

@@ index
<html>
<head>
<title>Ireket mondunk!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
<h1>testing one two three</h1>
<% @irek.each do |ir| %>
<p><%= ir %></p>
<% end %>
</body>
</html>
