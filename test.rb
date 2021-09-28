puts "which company?"
@company = gets.strip.to_s

companies = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}
eps_array=[]
# def search_list(companies)
if companies.has_key?("#{@company}") != true 
    puts "I am sorry, we found no result for #{@company}"
else
    puts "We are currently searching for the latest data on #{@company}"
end
eps = companies["#{@company}"][0].to_i/companies["#{@company}"][2]

puts eps_array << eps
puts eps_array[0].class
puts companies["#{@company}"][1].class

pe_ratio = companies["#{@company}"][1] / eps_array=[0]
# puts pe_ratio
# end


# def eps_number(earnings, share_amount)
#     companies["#{@company}"][0]/companies["#{@company}"][2]
# end
