# eps = 0
# amount_of_shares = 0
# earnings_per_share = 0
class Shares 
    attr_accessor :earnings, :number_of_shares, :share_price

    def initialize(earnings, number_of_shares, share_price)
        @earnings = earnings
        @number_of_shares = number_of_shares
        @share_price = share_price
        @earnings_per_share_calculation = []

    end

def earnings_per_share(earnings, number_of_shares)

 number = @earnings/@number_of_shares
 puts "the earnings per share is #{number}."


end

# def pe_ratio(share_price, earnings_per_share)

# share_price/earnings_per_share
    
# end

end

company = Shares.new(100000, 50000, 60)
puts earnings_per_share.number
# puts earnings_per_share(500, 100)
# puts pe_ratio(30, 5)

