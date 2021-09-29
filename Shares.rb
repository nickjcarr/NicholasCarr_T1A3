require_relative "company_data"

# puts "please enter company name: "
# @name = gets.strip.to_s.downcase
# # company = companies[company_name]
# # p company.calculate_EPS
class Company
    attr_reader :name, :earnings, :share_price, :eps

    def initialize(name, earnings, share_amount, share_price)
        @name = name
        @earnings = earnings
        @share_amount = share_amount
        @share_price = share_price
        @eps = @earnings / @share_amount
        @pe_ratio = @share_price / @eps
    end
end


tesla = Company.new("tesla",100,40,5)
apple = Company.new("apple", 100,20,3)

puts tesla.earnings
puts apple.eps
puts tesla.pe_ratio
companies = 
{
    "tesla" => Company.new("tesla", 100, 40, 10),
    "goog" => Company.new("google", 200, 10, 5),
    "nike" => Company.new("nike", 300, 20, 15)
}

# yahoo = Company.new("yahoo", 150, 40, 10)


#     puts "please enter company name: "
# @name = gets.strip.to_s.downcase

# def welcome

# if @companies.has_key?("#{@name}") == true
#     puts "#{@name }"
# else
#     puts "Im sorry, we do not have this share on our watch list, please enter another"
# end
# end
# p "#{@name}".earnings