
class Hotel
    attr_reader :rooms, :name

    # We have initialized the hotel with all this data - so that the data is in one location if it needs to be modified.
    # If in the future we were to expand to different locations, we could create Hotel subclasses, and hard-code the information in there. 
    def initialize
        @name = "Purr Seasons"
        @address = "32 Cat St, Tabby Town"
        @phone = "1800 MEOW MEOW"
        @email = "say_meow@purrseasons.com"
        @about = "~ An Experience Your Cat Won\'t Forget ~ \n The Purr Seasons is a luxury cat hotel. \n It's so good you'll wish you could stay too! \n\n All our rooms are heated to the purr-fect temperature,\n are fitted with cosy furnishings,\n include lots of cuddle time (if your cat likes that!),\n and are designed to make your cat feel at home. "
        @rooms = []          # Array of room objects - one advantage of having this array is that when new rooms are added to the Hotel class, the rest of the code does not have to be changed, and it will display in the main application. 
    end

    # Displays the contact information for the hotel
    def hotel_info
        puts HEADER_LINE
        puts "#{@name.upcase}".center(HEADER_LENGTH)
        puts HEADER_LINE
        puts
        contact_info
        puts
        puts HEADER_LINE
        puts
        puts "   #{@about}"
        puts
        puts HEADER_LINE
    end
    def welcome(hotel)
        puts
        puts HEADER_LINE
        puts "WELCOME TO THE".center(HEADER_LENGTH)
        puts "#{hotel.name} Cat Hotel!".center(HEADER_LENGTH)
        puts HEADER_LINE
        puts
    end
end

