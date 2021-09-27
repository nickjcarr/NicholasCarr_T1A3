class CompanyData
    attr_accessor :company
    def initialize(company)
        @company = company
    end



company = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}
def search_list
puts company.has_key?("#{@company}")
end


puts companies["#{@company}"][0]


end


# class Shares 
#     attr_accessor :earnings, :number_of_shares, :share_price

#     def initialize(earnings, number_of_shares, share_price)
#         @earnings = earnings
#         @number_of_shares = number_of_shares
#         @share_price = share_price
#         @earnings_per_share_calculation = []

#     end

# def earnings_per_share(earnings, number_of_shares)

#  number = @earnings/@number_of_shares
#  puts "the earnings per share is #{number}."


# end

# def pe_ratio(share_price, earnings_per_share)

# share_price/earnings_per_share
    
# end

# end