require_relative 'Shares'

tesla = Company.new("tesla", 100, 40, 5, 3)
apple = Company.new("apple", 100, 20, 3, 6)
microsoft = Company.new("microsoft", 800, 30, 10, 8)
# p microsoft.earnings
# p microsoft.eps



@companies = {tesla: tesla, apple: apple, microsoft: microsoft}
@companies[:dell] = Company.new("dell", 100, 40, 5, 3)

def welcomemenu()
        
    puts "Welcome to Stock Watch, an application that lets you find the value of a stock"


    print "What can we call you? "
    @first_name = gets.strip

   
 puts "#{@first_name} please choose one of the following options: "
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
    # if companiesss.include?("#{@@name}") 
        puts  @companies[name.to_sym].earnings
 end
    

# when 2
#     puts "Please enter the company name that you would like to know the PE ratio of: "
#     name = gets.strip.downcase
#     puts  @companies[name.to_sym].earnings
# else
#     puts "no"


# when 3
#     puts "Please enter the company name that you would like to know the price history of: "
# end
# when 4
    
# end


welcomemenu
