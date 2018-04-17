class TwitterSearch

  def initialize(query)
    @query = query
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = "ACV9IkpTdLgYsSbqwReLg"
      config.consumer_secret = "YPMAoluU4ovY2TFE8yYCERB8kTr2cOCV1l1idOn9Cl"
      config.access_token = "2085091-XLG3j5eF3XBJoKRoPgS1qUBmyU4azlFUFeBj913leY"
      config.access_token_secret = "4pHwMayu8zdB14r4sV1X9XJdwnHbEycEE4Se3AwsANnTw"
    end
  end

  def tweets
    @client.search(@query).entries
  end

end

#TwitterSearch.new("aviflombaum").tweets #=>
