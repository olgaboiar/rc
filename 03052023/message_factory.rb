require_relative("./simple_message")
require_relative("./gratitude_message")
require_relative("./reminder_message")

class MessageFactory
    def self.initialize_message(type, ui)
        case type
        when 1
            return SimpleMessage.new(ui)
        when 2
            return GratitudeMessage.new(ui)
        when 3
            return ReminderMessage.new(ui)
        end
    end

end