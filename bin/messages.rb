require 'nokogiri'
require 'open-uri'

class Messages
  # attr_reader :HELP
  def self.helper
    help_command = "List of Commands: \n "\
          "/help : How in the world would I know what you eat? \n "\
          "/joke : Get me a Rib Tickler. \n "\
          "/end : Sad to see you leave, back to work, there's coding to do. \n "\
          # "/headlines : Top News Headlines from The BBC"\
    help_command
  end

  def self.get_joke
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(URI.open('https://readme-jokes.vercel.app/api'))
    # Search for nodes by css
    s = ""
    doc.css('text', 'p').each do |link|
      s += "\n" + link.content
    end
    s
  end

  def self.get_headlines
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
