require 'appengine-rack'
AppEngine::Rack.configure_app(          
    :application => "ireketmondunk",           
    :precompilation_enabled => true,
    :version => "1")
require 'irishpeople'
run Sinatra::Application
