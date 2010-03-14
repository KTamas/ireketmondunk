require 'sinatra'
require 'base64'
require 'yaml'


get '/' do
# @irek = YAML::load(File.open('WEB-INF/irek.yaml'))
# erb :index
  redirect 'http://twitter.com/ireketmondunk'
end

get '/update' do
  @irek = YAML::load(File.open('WEB-INF/irek.yaml'))
  @auth = YAML::load(File.open('WEB-INF/auth.yaml'))
  url = URI.parse("http://twitter.com/statuses/update.xml")
  http = AppEngine::URLFetch::HTTP.new(url.host, url.port)
  headers = { 
    "Content-Type" => "application/x-www-form-urlencoded", 
    "Authorization" => "Basic #{Base64::encode64(@auth['user'] + ':' + @auth['pass'])}"
  }
  http.post(url.path, "status=#{@irek[rand(@irek.size)]}", headers)
  "yay"
end

get '/ping' do
  "pong"
end

__END__

@@ index
<html>
<head>
<title>Ireket mondunk!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Refresh"
</head>
<body>
<h1>redirecting to twitter...</h1>
<p></p>
</body>
</html>
