# require_relative "company_data"

# puts "please enter company name: "
# @name = gets.strip.to_s.downcase
# # company = companies[company_name]
# # p company.calculate_EPS
class Company
    attr_accessor :name, :earnings, :share_price, :eps, :pe_ratio, :last_year_price, :share_amount, :history_percentage

    def initialize(name, earnings, share_amount, share_price, last_year_price)
        @name = name
        @earnings = earnings
        @share_amount = share_amount
        @share_price = share_price
        @last_year_price = last_year_price
        @eps = @earnings / @share_amount
        @pe_ratio = @share_price / @eps
        @history_percentage = ((@share_price-@last_year_price)/@last_year_price) *100
    end
end

# def welcomemenu()
        
#     puts "Welcome to Stock Watch, an application that lets you find the value of a stock"


#     print "What can we call you? "
#     @first_name = gets.strip

   
#  puts "#{@first_name} please choose one of the following options: "
#  puts 
#  puts "1- View a stock price of a company."
#  puts "2- See our recommendation of a stocks P/E, and if it is a good investment."
#  puts "3- view the stocks history from one year ago until today."
#  puts "4- Exit."

#  choice = gets.to_i
#  case choice
#  when 1
#     puts "Please enter the company name you would like to know the share price of: "
#     @name = gets.strip.downcase
#     # if companiesss.include?("#{@@name}") 
#         puts "#{@name}".earnings
#     else
#         puts "no"
#     end

#     # when 2
# #     puts "Please enter the company name that you would like to know the PE ratio of: "
# # end
# # when 3
# #     puts "Please enter the company name that you would like to know the price history of: "
# # end
# # when 4
    
# # end
# end
# end
# tesla = Company.new("tesla", 100, 40, 5, 3)
# apple = Company.new("apple", 100, 20, 3, 6)
# microsoft = Company.new("microsoft", 800, 30, 10, 8)
# # p microsoft.earnings
# # p microsoft.eps



# companies = {tesla: tesla, apple: apple, microsoft: microsoft}
# companies[:dell] = Company.new("dell", 100, 40, 5, 3)
# pp companies[:tesla].earnings

# user_input = 'dell'

# p companies[user_input.to_sym].earnings

