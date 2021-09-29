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
tesla = Company.new("tesla", 100, 40, 10)
companies = 
    {
        "tesla" => Company.new("tesla", 100, 40, 10),
        "goog" => Company.new("google", 200, 10, 5)
    }

p tesla.earnings
p tesla.eps
p tesla.pe_ratio
# company_name = gets.strip
# company = companies[company_name]
# p company.eps







