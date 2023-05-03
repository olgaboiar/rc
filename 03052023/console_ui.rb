class ConsoleUI
    def initialize; end

    def display_info_message(message)
        puts "#{green(message)}\n\n"
    end

    def display_error_message(message)
        puts "\n#{red(message)}\n\n"
    end

    def display_main_menu(menu)
        puts pink("Main Menu:\n")
        menu.each_with_index do | option, i |
            puts "#{i + 1}. #{option}"
        end
        puts "#{menu.length + 1}. Exit\n\n"
    end

    def display_sub_menu(sub_menu)
        sub_menu.each_with_index do | type, i |
            puts "#{i + 1}. #{type} message"
        end
        puts "#{sub_menu.length + 1}. Cancel, return to main menu\n\n"
    end

    def display_saved_messages(messages)
        if messages.length == 0
            puts blue("\nThere are no saved messages yet.\n")
        else
            puts green("\nMessages saved so far:")
            messages.each_with_index do | message, i |
                puts "#{i + 1}. #{message}"
            end
        end
    end

    def prompt_for_input(message)
        puts "\n#{blue(message)}\n\n"
    end

    def get_numeric_input
        gets.chomp.to_i
    end

    def get_string_input
        gets.chomp
    end

    private
    def green(string)
        "\e[32m#{string}\e[0m"
    end

    def pink(string)
        "\e[35m#{string}\e[0m"
    end

    def blue(string)
        "\e[34m#{string}\e[0m"
    end

    def red(string)
        "\e[31m#{string}\e[0m"
    end
end