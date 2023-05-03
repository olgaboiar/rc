class ReminderMessage
    def initialize(ui)
        @ui = ui
    end

    def create_entry
        error =  "Ooops! This feature is not implented yet, but we're working on it"
        @ui.display_error_message(error)
    end
end
