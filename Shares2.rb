class Shares 
    attr_accessor :earnings, :number_of_shares, :share_price, :company, :earnings_per_share_calculation

    def initialize(company)
        @company = company
        @earnings = earnings
        @number_of_shares = number_of_shares
        @share_price = share_price
        @earnings_per_share_calculation = [] #this will hold the eps after (earnings / share amount)

    end
    # def company_is_in_database("#{@company}")
    #     if companies.has_key?("#{@company}") != true 
    #         puts "I am sorry, we found no result for #{@company}"
    #     else
    #         puts "We are currently searching for the latest data on #{@company}"
    #     end
        def earnings_per_share_amount(earnings, share_amount)
            eps = earnings / share_amount
           return eps
           eps = gets.to_i
            puts eps
        end
        def pe_ratio_amount(share_price, eps)
            pe_ratio = share_price / eps
            return pe_ratio
            puts pe_ratio
        end

        
    end


search_company = Shares.new("Tesla")
# puts search_company.company_name
puts search_company.earnings_per_share_amount(10,5)
puts search_company.pe_ratio_amount(20, "#{@eps}")