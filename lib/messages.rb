require 'nokogiri'
require 'open-uri'

class Messages
  def helper
    "List of Commands: \n "\
          "/help : How in the world would I know what you eat?\n"\
          "/joke : Get me a Rib Tickler.\n"\
          "/yomomma : YO MOMMA!... Click me to know more.\n"\
    '/end : Sad to see you leave, back to work.'
    # '/headlines : Top News Headlines from The BBC'\
  end

  def tech_joke
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(URI.open('https://readme-jokes.vercel.app/api'))
    # Search for nodes by css
    s = ''
    doc.css('text', 'p').each do |link|
      s += "\n #{link.content}"
    end
    s
  end

  def yomomma_joke
    # Fetch and parse HTML document
    s = []
    URI.open('http://api.yomomma.info/') do |f|
      f.each_line do |line|
        s = line.split(':')
      end
    end
    (s[1].delete ':{\"}\"').to_s
  end
end
