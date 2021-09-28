class Shares 
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
def share_price_number
    @share_price
end

    def earnings_number
        @earnings
    end
    def number_of_shares_amount
        @number_of_shares
    end


end

search_company = Shares.new("Tesla")
puts search_company.company_name

# def earnings_per_share(earnings, number_of_shares)

#  number = @earnings/@number_of_shares
#  puts "the earnings per share is #{number}."


# end

# def pe_ratio(share_price, earnings_per_share)

# share_price/earnings_per_share
    
# end

# end
