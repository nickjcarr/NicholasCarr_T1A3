
puts "what company would you liek to research?"
company_answer = gets.strip




company = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}

puts company.has_key?("#{company_answer}")

puts company["#{company_answer}"][0]
