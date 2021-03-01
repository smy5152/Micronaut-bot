#! /usr/bin/env ruby

require 'telegram/bot'
require 'dotenv'
Dotenv.load

commands = Messages.new

Telegram::Bot::Client.run(ENV['TELEGRAM_TOKEN']) do |bot|
  bot.listen do |message|
    case message.text
    when '/joke'
      bot.api.send_message(chat_id: message.chat.id, text: commands.get_joke)
    when '/end'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}!")
    when '/help'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}!")
      bot.api.send_message(chat_id: message.chat.id, text: commands.help)
    else
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}!")
      bot.api.send_message(chat_id: message.chat.id, text: "/help Can Really `Help` You Know...")
    end
  end
end
