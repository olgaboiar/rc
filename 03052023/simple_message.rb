class SimpleMessage
    def initialize(ui)
        @ui = ui
    end

    def create_entry
        prompt =  "Input your message and press ENTER"
        @ui.prompt_for_input(prompt)
        message = @ui.get_string_input
    end
end
