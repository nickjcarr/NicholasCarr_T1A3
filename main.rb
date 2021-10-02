require_relative 'Shares'

require 'colorize'
require 'artii'



@companies = { }
@companies[:dell] = Company.new("dell", 100, 4, 7, 3)
@companies[:ford] = Company.new("ford", 100, 40, 8, 3)
@companies[:amazon] = Company.new("amazon", 200, 140, 50, 13)
@companies[:tesla] = Company.new("tesla", 100, 40, 8, 3)
@companies[:google] = Company.new("google", 500, 80, 18, 23)
@companies[:holden] = Company.new("holden", 400, 40, 48, 43)
@companies[:fortescue] = Company.new("fortescue", 10300000000, 3078929306, 14.57, 16.08)
@search = ["tesla", "amazon", "google", "dell", "holden", "fortescue"]

def welcomemenu()
    a = Artii::Base.new
    a.asciify('Stock Watch')
    puts a.asciify("Stock Watch")
    
    
    puts "Welcome to Stock Watch, an application that lets you find the value of a stock".blue 
puts "DISCLAIMER!!! Investing is risky. The information we provide is for education purposes only. \n Any opinions we give our ours, and ours alone. Use of our information is done at ones own will."

    print "Please enter your name: "
    first_name = gets.strip
    system("clear")
    until first_name != ""
        puts "We would love to know your name"
        first_name = gets.strip
    end
 puts "#{first_name} please choose one of the following options: ".yellow
 puts 
 puts "1- View a stock price of a company.".green
 puts "2- See our recommendation of a stocks P/E, and if it is a good investment.".green
 puts "3- view the stocks history from one year ago until today.".green
 puts "4- Exit.".green

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
    if @companies[name.to_sym].pe_ratio > 15
 puts  "The PE ratio of ""#{name}"" is  ""#{@companies[name.to_sym].pe_ratio}. This seems to be an over valued company at the moment and is a bit risky"
    else
 puts  "The PE ratio of ""#{name}"" is  ""#{@companies[name.to_sym].pe_ratio}. This seems to be an under valued company at the moment and could be a wise investment."
    end
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
  
puts  "One year ago today, the price of #{name} was #{@companies[name.to_sym].last_year_price}. Today is is #{@companies[name.to_sym].share_price}. The difference is #{@companies[name.to_sym].history_percentage} %."
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
