lass Shares 
    attr_accessor :earnings, :number_of_shares, :share_price, :company, :earnings_per_share_calculation

    def initialize(company)
        @company = company
        @earnings = earnings
        @number_of_shares = number_of_shares
        @share_price = share_price
        @earnings_per_share_calculation = [] #this will hold the eps after (earnings / share amount)

    end
    def company_is_in_database("#{@company}")
        if companies.has_key?("#{@company}") != true 
            puts "I am sorry, we found no result for #{@company}"
        else
            puts "We are currently searching for the latest data on #{@company}"
        end
        
    end


search_company = Shares.new("Tesla")
puts search_company.company_name