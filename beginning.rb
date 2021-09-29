class User
    attr_reader :name
    attr_reader :art
    attr_reader :options
    attr_reader :intro

    def initialize()

        puts "Welcome to Stock Watch, an application that lets you find the value of a stock"
        puts "What would you like to do?"

        print "Enter your first name: "
        @name = gets.strip

        @options = []
        @options.push("View a stock price of a company.")
        @options.push("See our recommendation of a stocks P/E, and if it is a good investment.")
        @options.push("view the stocks history from one year ago until today.")
        @options.push("Exit.")
    end

    def selecting_your_goal ()
        puts "#{@name}, #{@intro}"
    
        options_index = 0
        for option in @options
            puts "#{options_index + 1}. #{option}"
            options_index += 1
        end
        print "What would you like to do?: "
        user_choice = gets.to_i - 1
    end

end






















puts "Welcome to Stock Watch, an application that lets you find the value of a stock"
puts "What would you like to do?"
puts "-- Type '1' to view a stock price of a company."
puts "-- Type '2' to see our recommendation of a stocks P/E, and if it is a good investment."
puts "-- Type '3' to view the stocks history from one year ago until today."
puts "-- Type '4' to exit."

# choice = gets.chomp.downcase
# case choice
# when '1'
#   puts "Which company would you like to see the stock price of?"
#   name = gets.chomp
   
#     puts "#{name} current value is $#{share_price}."
#   end
# when '2'
#   puts "Which company would you like to know the P/E value of?"
#   name = gets.chomp
  
#    puts "#{@name} current P/E value is "
# end
# when '3'
#     puts "Which company would you like to see the history of?"
#     name = gets.chomp
   
#         puts "#{name} share history is ..."
#     end

# when '4'
#   puts "Sorry, I didn't understand you."
# end



# class Menu
# attr_reader :options 
#         def initialize()
#             print "Welcome to Stock Watch, an application that lets you find the value of a stock"
#             puts "What would you like to do?"
          
    
#             @options = []
#             @options.push("View the current value of a stock.")
#             @options.push("see our recommendation of a stocks P/E, and if it is a good investment")
#             @options.push("stocks history from one year ago until today.")
#             @options.push("Exit")   

#             def print_options()
#                 options_index = 0
#                 for option in @options
#                     puts "#{options_index + 1}. #{option}"
#                     options_index += 1
#                 end
#             end

#         end
#     end   