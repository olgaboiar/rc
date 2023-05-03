require_relative("./notification_board")
require_relative("./program")
require_relative("./input_validator")
require_relative("./console_ui")

ui = ConsoleUI.new()
board = NotificationBoard.new(ui)
program = Program.new(board, ui)
program.run