require_relative 'Shares' #link to shared page with the class on it

require 'colorize'#allows for coloured text
require 'artii'#allows for ascii art


#a list of the companies and their data to give to the user and make calculations
@companies = { }
@companies[:apple] = Company.new("apple", 274300000000, 16543988783, 113, 142)
@companies[:samsung] = Company.new("samsung", 55560000000, 271706900, 1549, 1272)
@companies[:foxconn] = Company.new("foxconn", 10300000000, 3078929306, 14.57, 16.08)
@companies[:google] = Company.new("google", 10300000000, 3078929306, 2730, 1455)
@companies[:microsoft] = Company.new("microsoft", 10300000000, 3078929306, 289, 210)
@companies[:huawei] = Company.new("huawei", 10300000000, 3078929306, 6.3, 2.7)
@companies[:dell] = Company.new("dell", 10300000000, 3078929306, 105, 68)
@companies[:hitachi] = Company.new("hitachi", 10300000000, 3078929306, 6460, 3650)
@companies[:ibm] = Company.new("ibm", 10300000000, 3078929306, 143, 122)
@companies[:sony] = Company.new("sony", 10300000000, 3078929306, 7892, 12085)
@companies[:intel] = Company.new("intel", 10300000000, 3078929306, 53, 52)
@companies[:facebook] = Company.new("facebook", 10300000000, 3078929306, 265, 345)
@companies[:panasonic] = Company.new("panasonic", 10300000000, 3078929306, 890, 1346)
@companies[:hp] = Company.new("hp", 10300000000, 3078929306, 19, 28)
@companies[:tencent] = Company.new("tencent", 10300000000, 3078929306, 216, 461)
@companies[:lg] = Company.new("lg", 10300000000, 3078929306, 92, 125)
@companies[:cisco] = Company.new("cisco", 10300000000, 3078929306, 38, 55)
@companies[:lenovo] = Company.new("lenovo", 10300000000, 3078929306, 5, 8.5)
@companies[:tesla] = Company.new("tesla", 10300000000, 3078929306, 425, 774)
@companies[:xiaomi] = Company.new("xiaomi", 10300000000, 3078929306, 3200, 3283)


#this array searches when company entered to make sure that it is in the database
@search = ["apple", "samsung", "foxconn", "google", "microsoft", "huawei", "dell", "hitachi", "ibm", "sony", "intel", "facebook", "panasonic", "hp", "tencent",
"lg", "cisco", "lenovo", "tesla", "xiaomi"]

def welcomemenu()
    #ascii art
    a = Artii::Base.new
    a.asciify('Stock Watch') #ascii art logo to appear on opening of app
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

 #options to select from menu
 case choice
 when 1
    puts "Please enter the company name you would like to know the share price of: "
    name = gets.strip.downcase
    #until loop which maks sure that the user puts in a company that is in the database. will come up with an error until a correct name in used
    until @search.include?("#{name}") != false 
        puts "Sorry, it seems that we do not have " "#{name}" " in our data. Please enter another company"
        name = gets.strip.downcase
    end

#return of the information user asks for
   puts  "The current share price of ""#{name}" " is $ ""#{@companies[name.to_sym].share_price}"
#option to keep using app or quit
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
    #if statement to give our recomendation to the user to see if it is a good or bad investment. two answers available
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
  #price comparison of past and present share price
puts  "One year ago today, the price of #{name} was #{@companies[name.to_sym].last_year_price.to_i}. Today is is #{@companies[name.to_sym].share_price.to_i}. The difference is #{@companies[name.to_sym].history_percentage.to_i} %."
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
