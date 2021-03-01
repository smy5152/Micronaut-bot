# spec/messages_spec.rb
require 'rspec'
require_relative '../bin/messages'

describe Messages do
  # let(:test_commands) { Messages.new }
  context 'Object creates Default Parameters' do
    describe '#get_joke' do
      s = "\nQ. Why couldn't the developer pull the weeds from the garden?\nA. They didn't have root access."
      it 'joke should parse to a String and sent to the BOT to display' do
        expect(Messages.get_joke.class).to eq(s.class)
      end

      it 'joke should not parse to an Integer' do
        expect(Messages.get_joke.class).not_to eq(Integer)
      end
    end

    describe '#helper' do
      it 'help_command variable is not NULL' do
        expect(Messages.helper).not_to eq(nil)
      end
    end
  end
end
