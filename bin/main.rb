require_relative '../lib/messages'
require_relative '../lib/bot'

module MicronautBot
  (1..3).each do
    puts '.'
    sleep 0.5
  end
  puts 'WOOHOO!!! BOT is Running... - Catch it with commands on Telegram here... http://t.me/smy5152_bot'
  (1..5).each do
    puts '.'
    sleep 0.5
  end

  Bot.new
end
