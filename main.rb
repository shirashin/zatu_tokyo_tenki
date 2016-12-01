#! env ruby
require "json"
require "open-uri"
a=open("http://weather.livedoor.com/forecast/webservice/json/v1?city=130010"){|f|JSON.load(f)["forecasts"]}
puts "今日の天気は#{a[0]["telop"]}、明日は#{a[1]["telop"]}"

