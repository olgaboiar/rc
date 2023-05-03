class InputValidator
    def initialize(ui)
        @ui = ui
    end

    def validate_menu_selection(input, menu_length)
        if input <= 0 || input > menu_length + 1
            display_error(menu_length)
            false
        else
            true
        end
    end

    private

    def display_error(max_selection)
        error = "Invalid iput: please enter a number from 1 to #{max_selection} to indicate your choice and press ENTER"
        @ui.display_error_message(error)
    end
end