require 'sinatra'
require 'twitter'
require 'pry'

get '/' do # Route
  File.read("hello.html")
end

post "/" do # Route
  "Goodbye World"
end

#use Sinatra::Application
