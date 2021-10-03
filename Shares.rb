#class called company w
class Company
    attr_reader :name, :earnings, :share_price, :eps, :pe_ratio, :last_year_price, :share_amount, :history_percentage

    def initialize(name, earnings, share_amount, share_price, last_year_price)#data needed to perform
        @name = name#company name
        @earnings = earnings#yearly earnings of the company
        @share_amount = share_amount#amount of shares issued 
        @share_price = share_price#current share price of the company
        @last_year_price = last_year_price#share price one year ago
        @eps = @earnings / @share_amount#earnings per share calculation
        @pe_ratio = @share_price / @eps#price to earnings ratio
        @history_percentage = ((@share_price-@last_year_price)/((@last_year_price + share_price)/2) *100)#calculation of performance of the company one year ago until today
    end
end



