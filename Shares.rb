puts "please enter company name: "
@name = gets.strip.to_s.downcase
# company = companies[company_name]
# p company.calculate_EPS
class Company
    attr_reader :name, :earnings, :share_price

    def initialize(name, earnings, share_amount, share_price)
        @name = name
        @earnings = earnings
        @share_amount = share_amount
        @share_price = share_price
    end

    companies = 
    {
        "tesla" => Company.new("tesla", 100, 40, 10),
        "goog" => Company.new("google", 200, 10, 5),
        "nike" => Company.new("nike", 300, 20, 15)
    }
    
    if companies.has_key?("#{@name}") == true
        puts "true"
    else
        puts "false"
    end
    def calculate_EPS()
        return @earnings / @share_amount
    end
end


