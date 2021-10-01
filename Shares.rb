
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



