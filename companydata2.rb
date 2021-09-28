puts "Which company?"
company = gets.chomp.to_s


companies = {
    "tesla" => [1000000, 75,100000 ],
    "microsoft" => [2000000, 100,200000 ]
}



puts companies["tesla"][0]