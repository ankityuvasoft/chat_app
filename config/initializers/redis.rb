# $redis = Redis.new(:host => 'https://chat-app-yuva.herokuapp.com/', :port => 8080, :driver => :hiredis)
$redis = Redis::Namespace.new('https://chat-app-yuva.herokuapp', :redis => Redis.new)