class GratitudeMessage
    def initialize(ui)
        @date = Time.now.strftime("%d/%m/%Y")
        @ui = ui
    end

    def create_entry
        prompt = "What are you grateful for? Input your answer and press ENTER"
        @ui.prompt_for_input(prompt)
        message = @ui.get_string_input
        "#{@date}: today I am grateful for #{message}"
    end
end
