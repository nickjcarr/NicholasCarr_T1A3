
#a list of all the companies and their data, which is searched to see if the company exists in our collected data

# companies = 
# {
#     "tesla" => Company.new("tesla", 100, 40, 10),
#     "goog" => Company.new("google", 200, 10, 5),
#     "nike" => Company.new("nike", 300, 20, 15)
# }



puts "which company?"
@company = gets.strip.to_s



# def search_list(companies)
if @companies.has_key?("#{@company}") != true 
    puts "I am sorry, we found no result for #{@company}"
else
    puts "We are currently searching for the latest data on #{@company}"
end