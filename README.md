![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name: Micronaut Bot

![screenshot](logo.jpg)

# Introduction

I have delayed building a BOT for fun for a while and finally got around getting this one done in a few hours of overnight coding. The commands are few, extendable to full functionality. I hope to add more contributors and a further set of features once it's hosted and available to access from an external server. ( I doubt I can leave my laptop running 24/7 lol :) )

## DESCRIPTION & HOW TO START THE BOT

### The Telegram-bot live link

- Click the link and it will launch The bot in your Desktop Telegram [MicronautBot](http://t.me/smy5152_bot)
- Search for `MicronautBot` & select the Bot with a Picture of the Sun Shining Bright![screenshot](./images/search-bot-name.PNG)

### USAGE - INSTRUCTIONS or COMMANDS

- `/help`: List of Available Commands
![screenshot](./images/welcome-message-default.PNG)
- `/joke`: Gets a random programmer interpretable funny streak to make you smile (I hope...)
![screenshot](./images/joke-requested.PNG)
- `/yomomma`: Gets a random YO MOMMA!... (joke not the momma...) to make you smile.
![screenshot](./images/joke-requested-2.PNG)
- `/end`: It stops the bot and says "Bye!".

## IMPLEMENTATION OF A TELEGRAM BOT in RUBY

### BUILT WITH

- [Ruby](https://www.ruby-lang.org/en/)
- [Gems](https://www.ruby-lang.org/en/)
  - [Nokogiri](https://nokogiri.org/)
  - [Rspec](https://rspec.info/)
  - Open-URI
  - Rubocop
  - Dotenv
- VisualStudioCode

## Getting started

- To run the telegram-news-bot you must have Ruby installed on your computer. You can download and install Ruby from the link below.
- windows [Ruby installer](https://rubyinstaller.org/).
- MAC and LINUX [Ruby official site](https://www.ruby-lang.org/en/downloads/).

## Once Ruby is download and installed, please follow the instructions bellow

### 1- Clone the repo in your local folder where you want to run it

- Run the command below in your terminal
- `git clone https://github.com/smy5152/Micronaut-bot.git`

### 2- Install bundle

- Run `bundle install` to install the gems from the `Gemfile`

### 3- Download telegram and create a bot

- Download the [Telegram app](https://desktop.telegram.org/), create an account.
- Launch [Botfather](https://t.me/botfather). Follow the instructions to create a bot.
- You will then receive an API Token that looks like this: `NUMBER: key`
- Link the token to your bot by creating the .env file in your root directory and then add the token to the variable
  `TELEGRAM_TOKEN = NUMBER:key`

  |                                                      |                                                |
  | :--------------------------------------------------: | :--------------------------------------------: |
  | ![screenshot](./images/BotFather-Success-Config.PNG) | ![screenshot](./images/bot-config-options.PNG) |

### 4- Run the bot

- Type the below commands to launch the bot
  - Start a new Terminal [CMD from Run/Search on Windows]
  - Clone/Download .zip repo to an easily accessible location by terminal
  - Go to the directory: `cd Micronaut-bot`
  - Go to the directory: `cd bin`
  - $user-1@[..\bin>] Run `ruby main.rb` to start the bot.
- The 'BOT is RUNNING' message is displayed on the terminal.
### 5- RSPEC Tests
- #### STEPS TO RUN RSPEC FILE
- `cd spec`
- `rspec ./messages_spec.rb`
![screenshot](./images/rspec-0.1.PNG)
- Alternatively: Run `rspec` from the project root folder to see test results.

## Learning Goals:

- Independent learning, focus on end-results and motivating self.
- Progressive Monitoring & reliable project deliverables on due time, being focused, accountable.
- Ability to work independently and ask for help after due self-research if needed.
- Version Control, Git Flow, RSpec Tests, Parse URL Feed, BOT Template Implementation
- Application of RUBY Syntax & Programming elements.

## Authors

🧑‍💻 **Shabbir**

- GitHub: [@smy5152](https://github.com/smy5152)
- Twitter: [@smy5152](https://twitter.com/smy5152)
- LinkedIn: [Shabbir Yamani](https://www.linkedin.com/in/shabbirmyamani/)

## Show your support

Give ⭐️ if you like this project!

### Acknowledgements

- [Microverse](http://bit.ly/fullstackdev-free)
- [JOKES-API](https://readme-jokes.vercel.app/api)
- [YO MOMMA](http://api.yomomma.info/)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smy5152/Micronaut-bot.

## License

The gem is available as open-source under the terms of the [MIT License](LICENSE).
