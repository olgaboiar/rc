class Program
    def initialize(program, ui)
        @program = program
        @ui = ui
        @validator = InputValidator.new(@ui)
    end

    def run
        display_greeting
        quit = false
        until quit
            display_menu
            selection = @ui.get_numeric_input
            valid_selection = @validator.validate_menu_selection(selection, @program.main_menu.length + 1)
            if valid_selection
                quit = true if last_menu_option?(selection)
                execute_action(selection)
            end
        end
        display_farewell
    end

    private

    def display_greeting
        greeting = "***Welcome to #{@program.name}!***\n#{@program.description}"
        @ui.display_info_message(greeting)
    end

    def display_menu
        @ui.display_main_menu(@program.main_menu)
    end

    def display_farewell
        message = "Thanks for using #{@program.name}! Bye"
        @ui.display_info_message(message)
    end

    def last_menu_option?(selection)
        selection == @program.main_menu.length + 1
    end

    def execute_action(selection)
        action = 
            case
            when selection == 1
                @program.add_message(@validator)
            when selection == 2
                @program.show_messages
            end
    end
end