
class Intro
    attr_reader :company    # the player chooses their name.
 

    def initialize()
        print "Which company would you like to research?: "
        @company = gets.strip 
        
            puts "#{@company} is a great company"

    
    end
end
