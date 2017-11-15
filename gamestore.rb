# List of products and price
product = ["PS4", "PS3", "XBOX_ONE", "XBOX360"]
ps4_price = 30
ps3_price = 15
xboxone_price = 25
xbox360_price= 10
ps4_qty = 0
ps3_qty = 0
xboxone_qty = 0
xbox360_qty = 0
ps4_total = 0
ps3_total = 0
xboxone_total = 0
xbox360_total = 0
order_total = ps4_total + ps3_total + xboxone_total + xbox360_total

puts
puts "Welcome to FreeWorld Games!"
puts "What game would you like to purchase today?"

#Randomly chooses the product the customer wants
ask = product.sample 
puts ask

puts "How many would you like to purchase?"

# How many games the customer can purchase
copies = *(1..10)
request = copies.sample
puts request
puts
if ask == "PS4"
	ps4_total = ps4_price*request
	ps4_qty = request
elsif ask == "PS3"
	ps3_total = ps3_price*request
	ps3_qty = request
elsif ask == "XBOX_ONE"
	xboxone_total = xboxone_price*request
	xboxone_qty = request
elsif ask == "XBOX360"
	xbox360_total = xbox360_price*request
	xbox360_qty = request
end

# Randolmly chooses if the customer wants to purches any other games
choice = ["Yes!", "No!"]
puts "Would you like any other games?"
decision = choice.sample
puts decision
product.delete(ask) # This will take away any product the customer as choosen
puts

until decision == "No!"
puts "What game would you like to purchase today?"
ask2 = product.sample 
puts ask2
puts "How many would you like to purchase?"
request2 = copies.sample
puts request2
puts

if ask2 == "PS4"
	ps4_total = ps4_price*request2
	ps4_qty = request2
elsif ask2 == "PS3"
	ps3_total = ps3_price*request2
	ps3_qty = request2
elsif ask2 == "XBOX_ONE"
	xboxone_total = xboxone_price*request2
	xboxone_qty = request2
elsif ask2 == "XBOX360"
	xbox360_total = xbox360_price*request2
	xbox360_qty = request2
end

product.delete(ask2) 
if product == []
decision = "No!"
else
	puts "Would you like anything else?"
	decision = choice.sample
	puts decision
	puts
end
end	

# This is the total of all the product the customer asked for
order_total = ps4_total + ps3_total + xboxone_total + xbox360_total

puts "Lets get your total and print you your receipt."
puts

puts "Your total comes to " "$"+order_total.to_s
puts

puts "Here is a copy of your receipt."
puts
puts "......................................."

puts "FreeWorld Games"
puts "400 Yates Ave Grafton, WV 26354"
puts "(304) 265-3046"
puts "freeworldgames@gmail.com"
puts "________________________________________"
puts

# This prints the quanity and the total for each game
if ps4_qty > 0
puts ps4_qty.to_s + " PS4 games at " + "$"+ps4_price.to_s
puts "PS4 total is " + "$"+ps4_total.to_s
end
puts
if ps3_qty > 0
puts ps3_qty.to_s + " PS3 games at " + "$"+ps3_price.to_s
puts "PS3 total is " + "$"+ps3_total.to_s
end
puts
if xboxone_qty > 0
puts xboxone_qty.to_s + " XBOX_ONE games at " + "$"+xboxone_price.to_s
puts "XBOX_ONE total is " +"$"+xboxone_total.to_s
end
puts
if xbox360_qty > 0
puts xbox360_qty.to_s + " XBOX360 games at " + "$"+xbox360_price.to_s
puts "XBOX360 total is " + "$"+xbox360_total.to_s
end
puts
puts "________________________________________"
puts "TOTAL " "$"+order_total.to_s
puts

puts "________________________________________"
puts

puts "Want to receive coupons, special offers
and FreeWorld Games news?

Visit www.freeworldgames.com and 
sign up for our e-magazine.
Receive a 20% off coupon on your
next purchase just for signing up!
________________________________________

We appreciate your business!"
puts "........................................."