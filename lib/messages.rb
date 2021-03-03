require 'nokogiri'
require 'open-uri'

module MicronautBot
  class Messages
    def helper
      "List of Commands: \n "\
            "/help : How in the world would I know what you eat?\n"\
            "/joke : Get me a Rib Tickler.\n"\
            "/yomomma : YO MOMMA!... Click me to know more.\n"\
      '/end : Sad to see you leave, back to work.'
    end

    def tech_joke
      doc = Nokogiri::HTML(URI.open('https://readme-jokes.vercel.app/api'))
      s = ''
      doc.css('text', 'p').each do |link|
        s += "\n #{link.content}"
      end
      s
    end

    def yomomma_joke
      s = []
      URI.open('http://api.yomomma.info/') do |f|
        f.each_line do |line|
          s = line.split(':')
        end
      end
      (s[1].delete ':{\"}\"').to_s
    end
  end
end
