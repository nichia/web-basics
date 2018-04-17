require 'rack'

class App

  def self.call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello World"]]
  end

end

#run App.new
Rack::Server.start :app => App
