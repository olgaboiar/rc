require_relative("./message_factory")

class NotificationBoard
    attr_reader :name
    NAME = "Simple Awesome Notification Board"
    MAIN_MENU_OPTIONS = ["Add a message", "Display saved messages"]
    MESSAGES_TYPES = ["Simple", "Gratitude", "Reminder"]
    def initialize(ui)
        @name = NAME
        @messages = []
        @ui = ui
    end

    def description
        "#{@name} is a simple program to save your messages and to display them"
    end

    def main_menu
        MAIN_MENU_OPTIONS
    end

    def show_messages
        @ui.display_saved_messages(@messages)
    end

    def add_message(validator)
        return_to_main_menu = false
        until return_to_main_menu
            display_messages_types_prompt
            type = gets.chomp.to_i
            if type == 4
                return_to_main_menu = true 
                break
            end
            valid = validator.validate_menu_selection(type, 4)
            if valid
                message_type = MessageFactory.initialize_message(type, @ui)
                message = message_type.create_entry
                if message
                    save_message(message)
                    @ui.display_info_message("Message saved!")
                end
                return_to_main_menu = true
            end
        end
    end

    private

    def display_messages_types_prompt
        prompt = "Please select what type of message you want to add:"
        @ui.prompt_for_input(prompt)
        @ui.display_sub_menu(MESSAGES_TYPES)
    end

    def save_message(message)
        @messages << message
    end
end