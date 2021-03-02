# spec/messages_spec.rb
require_relative '../lib/Messages'
module MicronautBot
  describe 'Messages' do
    let(:test_commands) { Messages.new }
    context 'Object creates Default Parameters' do
      describe '#tech_joke' do
        s = "\nQ. Why couldn't the developer pull the weeds from the garden?\nA. They didn't have root access."
        it 'joke should parse to a String and sent to the BOT to display' do
          expect(test_commands.tech_joke.class).to eq(s.class)
        end

        it 'joke should not parse to an Integer' do
          expect(test_commands.tech_joke.class).not_to eq(Integer)
        end
      end

      describe '#yomomma_joke' do
        s = 'Yo mama so fat, her stomach gets home 15 minutes before she does.'
        it 'joke should parse to a String and sent to the BOT to display' do
          expect(test_commands.yomomma_joke.class).to eq(s.class)
        end

        it 'joke should not parse to an Integer' do
          expect(test_commands.yomomma_joke.class).not_to eq(Integer)
        end
      end

      describe '#helper' do
        it 'help_command parse to a Stringand sent to the BOT to display' do
          expect(test_commands.helper.class).to eq(String)
        end

        it 'help_command parse should not parse to an Integer' do
          expect(test_commands.helper.class).not_to eq(Integer)
        end

        it 'help_command variable is not NULL' do
          expect(test_commands.helper).not_to eq(nil)
        end
      end
    end
  end
end
