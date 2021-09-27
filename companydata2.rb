company = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}

for "#{company_answer}" in company
    puts "#{company_answer} is great"
puts company.has_key?("#{company_answer}")

puts company["#{company_answer}"][0]