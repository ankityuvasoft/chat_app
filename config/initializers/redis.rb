# $redis = Redis.new(:host => 'https://chat-app-yuva.herokuapp.com/', :port => 8080, :driver => :hiredis)
$redis = Redis.new(url: ENV["REDIS_URL"])