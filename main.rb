require_relative 'Shares' #link to shared page with the class on it

require 'colorize'#allows for coloured text
require 'artii'#allows for ascii art


#a list of the companies and their data to give to the user and make calculations
@companies = { }
@companies[:apple] = Company.new("apple", 274300000000, 16543988783, 142, 113)
@companies[:samsung] = Company.new("samsung", 55560000000, 271706900, 1549, 1272)
@companies[:foxconn] = Company.new("foxconn", 10300000000, 3078929306, 14.57, 16.08)


#this array searches when company entered to make sure that it is in the database
@search = ["apple", "samsung", "foxconn", ]

def welcomemenu()
    #ascii art
    a = Artii::Base.new
    a.asciify('Stock Watch')
    puts a.asciify("Stock Watch")
    
    #welcome and disclaimer note
    puts "Welcome to Stock Watch, an application that lets you find the value of a stock".blue 
puts "DISCLAIMER!!! Investing is risky. The information we provide is for education purposes only. \n 
Any opinions we give our ours, and ours alone. Use of our information is done at ones own will."

#enter name will not let you continue until a name is entered
print "Please enter your name: "
    first_name = gets.strip
    system("clear")
    until first_name != ""
        puts "We would love to know your name"
        first_name = gets.strip
    end
    #selection menu
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
 puts  "The PE ratio of ""#{name}"" is  ""#{@companies[name.to_sym].pe_ratio.to_i}. This seems to be an over valued company at the moment and is a bit risky"
    else
 puts  "The PE ratio of ""#{name}"" is  ""#{@companies[name.to_sym].pe_ratio.to_i}. This seems to be an under valued company at the moment and could be a wise investment."
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
  
puts  "One year ago today, the price of #{name} was #{@companies[name.to_sym].last_year_price}. Today is is #{@companies[name.to_sym].share_price}. The difference is #{@companies[name.to_sym].history_percentage.to_i} %."
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
