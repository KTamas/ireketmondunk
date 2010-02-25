require 'sinatra'
require 'twitter' 
require 'yaml'


get '/' do
  @irek = YAML::load(File.open('WEB-INF/irek.yaml'))
  erb :index
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
