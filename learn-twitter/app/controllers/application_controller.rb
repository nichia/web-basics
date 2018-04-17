class ApplicationController < Sinatra::Base

  get '/' do # Route GET '/' root
    "Hello World"
  end

  get '/twitter' do # Route
    #Action
    @tweets = TwitterSearch.new("aviflombaum").tweets

    erb :"twitter_search.html"
    #html = "<ul>"
    #html += @tweets.collect{|t| "<li style='border: 1px solid red'>#{t.user.username}: #{t.text}</li>"}.join)
    #html += "</ul>"
    #html
  end

end
