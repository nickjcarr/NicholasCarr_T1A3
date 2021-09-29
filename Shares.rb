# require_relative "company_data"

# puts "please enter company name: "
# @name = gets.strip.to_s.downcase
# # company = companies[company_name]
# # p company.calculate_EPS
class Company
    attr_accessor :name, :earnings, :share_price, :eps, :pe_ratio, :last_year_price

    def initialize(name, earnings, share_amount, share_price, last_year_price)
        @@name = name
        @@earnings = earnings
        @share_amount = share_amount
        @share_price = share_price
        @last_year_price = last_year_price
        @eps = @@earnings / @share_amount
        @pe_ratio = @share_price / @eps
    end
end

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
    @@name = gets.strip.downcase
    # if companiesss.include?("#{@@name}") 
        puts "#{@@name}".earnings
    else
        puts "no"
    end
    
end
tesla = Company.new("tesla", 100, 40, 5, 3)
apple = Company.new("apple", 100, 20, 3, 6)

# puts tesla.earnings
# puts apple.eps
# puts tesla.pe_ratio
# puts apple.pe_ratio

# companies = 
# {
#     "tesla" => Company.new("tesla", 100, 40, 10),
#     "goog" => Company.new("google", 200, 10, 5),
#     "nike" => Company.new("nike", 300, 20, 15)
# }

