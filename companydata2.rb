puts "Which company?"
company = gets.chomp.to_s


companies = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}

if companies.has_key?("#{@company}") != true 
    puts "I am sorry, we found no result for #{@company}"
else
    puts "We are currently searching for the latest data on #{@company}"
end

# for "#{company_answer}" in company
#     puts "#{company_answer} is great"
puts companies.has_key?("#{company}")

puts companies["#{company}"][0]