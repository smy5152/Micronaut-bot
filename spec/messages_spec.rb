# spec/messages_spec.rb
require_relative '../bin/messages'

describe Messages do
  context 'Messages.new' do
    let(:test_commands) { Messages.new }
    s = "\nQ. Why couldn't the developer pull the weeds from the garden?\nA. They didn't have root access."

    it 'joke should parse to a String and sent to the BOT to display' do
      expect(test_commands.get_joke.class).to eq(s.class)
    end

    it 'joke should not parse to an Integer' do
      expect(test_commands.get_joke.class).not_to eq(Integer)
    end
  end
end
