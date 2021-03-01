require 'nokogiri'
require 'open-uri'

class Messages
  attr_reader :HELP
  def initialize
    @HELP = "List of Commands: \n "\
          "/help : Shows this Message. \n "\
          "/joke : Read a Joke & Smile. \n "\
          "/end : Ends the Conversation. \n "\
  end

  def help
    self.HELP
  end

  def get_joke
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(URI.open('https://readme-jokes.vercel.app/api'))
    # Search for nodes by css
    s = ""
    doc.css('text', 'p').each do |link|
      s += "\n" + link.content
    end
    s
  end
end
