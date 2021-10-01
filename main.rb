require_relative 'Shares'

require 'colorize'
require 'artii'

# ford = Company.new("ford", 20, 60, 80, 70)
# p microsoft.earnings
# p microsoft.eps



@companies = { }
@companies[:dell] = Company.new("dell", 100, 40, 5, 3)
@companies[:ford] = Company.new("ford", 100, 40, 8, 3)
@companies[:amazon] = Company.new("amazon", 200, 140, 50, 13)
@companies[:tesla] = Company.new("tesla", 100, 40, 8, 3)
@companies[:google] = Company.new("google", 500, 80, 18, 23)

@search = ["tesla", "amazon", "google", "dell"]

def welcomemenu()
    a = Artii::Base.new
    a.asciify('Stock Watch')
    puts a.asciify("Stock Watch")
    
    
    puts "Welcome to Stock Watch, an application that lets you find the value of a stock".blue 


    print "What can we call you? "
    first_name = gets.strip
    system("clear")
    until first_name != ""
        puts "We would love to know your name"
        first_name = gets.strip
    end
 puts "#{first_name} please choose one of the following options: "
 puts 
 puts "1- View a stock price of a company."
 puts "2- See our recommendation of a stocks P/E, and if it is a good investment."
 puts "3- view the stocks history from one year ago until today."
 puts "4- Exit."

 choice = gets.to_i

 case choice
 when 1
    puts "Please enter the company name you would like to know the share price of: "
    name = gets.strip.downcase
    
    until @search.include?("#{name}") != false 
        puts "Sorry, it seems that we do not have " "#{name}" " in our data. Please enter another company"
        name = gets.strip.downcase
    end

   puts  "The current share price of ""#{name}" " is $ ""#{@companies[name.to_sym].share_price}"

   puts "Would you like to choose another feature? - #{"Type Yes/No"}"
   answer = gets.strip
   case (answer)
   when "yes"
       system("clear")
       load "main.rb"

   when "no"
       puts "Thank you for using Stock Watch services"
       exit
   end

when 2 
    puts "Please enter the company name that you would like to know the PE ratio of: "
    name = gets.strip.downcase
    

    until @search.include?("#{name}") != false 
        puts "Sorry, it seems that we do not have " "#{name}" " in our data. Please enter another company"
        name = gets.strip.downcase
    end
 puts  "The PE ratio of ""#{name}"" is $ ""#{@companies[name.to_sym].pe_ratio}"
 puts "Would you like to choose another feature? - #{"Type Yes/No"}"
   answer = gets.strip
   case (answer)
   when "yes"
       system("clear")
       load "main.rb"

   when "no"
       puts "Thank you for using Stock Watch services"
       exit
   end
when 3 
    puts "Please enter the company name you would like to know the price history of: "
    name = gets.strip.downcase
    
    until @search.include?("#{name}") != false 
        puts "Sorry, it seems that we do not have " "#{name}" " in our data. Please enter another company"
        name = gets.strip.downcase
    end
  
puts  "The difference between"" #{name}" " share price one year ago and today is ""#{@companies[name.to_sym].history_percentage}" "%."
puts "Would you like to choose another feature? - #{"Type Yes/No"}"
answer = gets.strip
case (answer)
when "yes"
    system("clear")
    load "main.rb"

when "no"
    puts "Thank you for using Stock Watch services"
    exit
end
else
    exit
end
end
welcomemenu
