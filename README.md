# T1A3 Terminal Application Nicholas Carr
### Repository link
https://github.com/nickjcarr/NicholasCarr_T1A3

## R5
## Develop a statement of purpose and scope for your application
As someone who has a keen interest in investing and how the stock market works, I decided to create a application that will allow a person to find out financial information about a company’s share price. 

### Describe at a high level what the application will do
My application provides the user with information to guide them when investing in a share. This is done in 3 ways. The first is to show the current share value, the second is to show the price to earnings ratio of the company to see if the share is over or under valued, and the third way is to show the difference in price from one year ago and today. While I believe this information is not enough to decide on an investment, it is a very common way investors use, along with other resources, to decide. 

### Identify the problem it will solve and explain why you are developing it
This application will help users solve how to make the price to earnings calculation without actually having to do the calculations. It gives the user a score and a recommendation on whether it is under or overvalued. It also shows the growth or decrease in share price from when using it and a year ago. 

### Identify the target audience
The target audience are people who are not savvy investors and would like to know what are the types of data professionals use when choosing a company to invest in. As I mentioned before, this is just one way of pricing a companys share worth and this message is given to the users when an output is given. 

### Explain how a member of the target audience will use it
The use of the application is very simple. When started, the user enters their name, and then is presented with the option to look up a share price, view a company’s price to earnings ratio, see the difference in value from one year ago and today and exit. The user chooses an option from entering 1,2,3 or 4. The user is then asked to enter the name of a company they would like to know about. If the company, doesn’t exist in the database, a message will tell the user this and ask to re-enter a company’s name. After the name is entered, the data is returned and given to the user, with the option to exit or make another enquiry.

## R6
### Feature 1
The first feature is to check the current price of a share. It does this by returning data input by me, as I am not using an API (as I do not know how to use one yet). When entering the company name, an error message will appear if the company does not exist in the database. I do this by having an until loop which cross references the name with an array that has all the names stored in it. When a correct company name is entered, a message will return with the company share price that is taken from when creating a new instance of class object (done for each company). A when statement is then presented to ask the user if they would like to choose another feature, yes returning to the start menu, no exiting the application. 
### Feature 2
The second feature uses the above company name until loop to check if it is in the database, as well as the option to go back to the menu or exit. When results return that it is in the database, the price to earnings ratio is returned. To determine whether the ratio represents an under or overvalued company, I used an if..else statement. This returns the ratio plus a statement saying whether it may be a safe or risky investment based on the ratio score. The ratio is calculated by using the instance variables in the class and then the pe ratio instance variable equalling an equation to compute it. 
### Feature 3
The final feature allows the user to find the price history and difference in percentage from one year ago and today. It uses the above name check until statements, then returns the data. The data is come from the class I made which takes the input, then calculates the price difference by the use of another instance variable that is equalled to an equation. 

## R7 Develop an outline of the user interaction and experience for the application.
Interacting with this application will be very straightforward. I do not want the users to have to spend time figuring out how it works. I believe all applications should be like this as it can deter the user from continual use. 
To begin with, the user will be greeted with a ascii art logo of the application name, a greeting message in blue text, followed by a disclaimer stating that investing is risky, and that all given information is to be used at ones own risk. The user will then be asked to enter their name. If no name is entered, it will continue to ask their name in the form of “we would love to know your name” so it can personalise the experience, by using the name in other areas of the application. 
Once the name is entered, the user is given the message to choose from the following options. This message is in yellow, and the options are in green. There is no specific reason for these colours, other than they look nice on the black background. The user can choose the options from the menu by entering the number correlating to the option. The first three options are the functions available to use, whilst the last is the option to exit.
When choosing 1, 2 or 3 the user is asked to enter the company name they would like to research. If a company is entered that is not in the database, the message “sorry, it seems that we do not have #{name} in our data. Please enter another company” will appear. This will continue to appear until a company in our database is entered. 
Once a company within our database is entered, the information is displayed, and the option to go back to the main menu is presented. If no is selected, it simply thanks the user for using our services and exits the application.

## R10
This application is very straightforward in terms of using it. The only gems I used were colorize, which was installed by the command gem install colorize. The other gem I used was artii, a gem which creates ascii art using gem install artii. I have included the gem files so the user will not need to install them, however if it is not working, the above commands can simply be installed. 
As I created a script in the bash file, this can simply be run by typing ./run_app.sh in the command line, or main.rb. As this is a command line application, the installation of Linux ubuntu is needed to run the application. As I have only loaded data from 20 tech companies for the user to utilise, is is recommended to try a search for facebook, google or tesla to get a result you are after. A connection to an API is my long term goal for this application.

