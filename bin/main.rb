require_relative '../lib/Messages'
require_relative '../lib/Bot'

(1..3).each { puts '.'; sleep 0.5 }
puts 'WOOHOO!!! BOT is Running... - Catch it with commands on Telegram here... http://t.me/smy5152_bot'
(1..5).each { puts '.'; sleep 0.5 }

MicronautBot.new
