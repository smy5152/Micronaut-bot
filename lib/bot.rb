require 'telegram/bot'
TELEGRAM_TOKEN = '1617151626:AAGz2rYIRynggn0Jm7pdzj1K2T38luo83pg'.freeze
class MicronautBot
  def initialize
    commands = Messages.new
    Telegram::Bot::Client.run(TELEGRAM_TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        # when '/headlines'
        #   bot.api.send_message(chat_id: message.chat.id, text: commands.get_headlines)
        when '/joke'
          bot.api.send_message(chat_id: message.chat.id, text: commands.tech_joke)
        when '/yomomma'
          bot.api.send_message(chat_id: message.chat.id, text: commands.yomomma_joke)
        when '/end'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}!")
        when '/help'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}!")
          bot.api.send_message(chat_id: message.chat.id, text: commands.helper)
        else
          bot.api.send_message(chat_id: message.chat.id, text: "Excuse Me! #{message.from.first_name}!")
          bot.api.send_message(chat_id: message.chat.id, text: '/help Can Really `Help` You...')
        end
      end
    end
  end
end
