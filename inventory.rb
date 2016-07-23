#INVENTORY OF CANDY 

# Define all Methods, prior to starting loop

# Method for displaying inventory
def inventory(items)
  puts "This is the candy in your inventory:" 	
  items.each{|key,value| puts "#{key}: #{value}"} 
end

# Method for updating item to existing inventory
def update_item(items)
	puts "Which item would you like to update: #{items.keys}?"
	item = gets.chomp
	until items.has_key?(item)
		puts "Please Enter an Item that exists in inventory!"
		inventory(items)
		item = gets.chomp
	end
	puts "What is the new inventory value for #{item}?"
	value = gets.chomp.to_i
	# Enhance by using REGEXP to check for valid integer values
	items[item] = value
end  

# Method for updating existing inventory
def add_item(items)
	puts "What would you like to add to inventory"
	item = gets.chomp
	while items.has_key?(item)
		puts "Please Enter an Item that doesn't already exist, otherwise use the Update Inventory option!"
		inventory(items)
		item = gets.chomp
	end	
	puts "What is the new inventory value for #{item}"
	#  Enhance by using REGEXP to check for valid integer values before converting user input to integer
	value = gets.chomp.to_i
	items[item] = value
end   

# Method for deleting existing inventory  
def delete_item(items)
	puts "What would you like to delete from inventory"
	item = gets.chomp
	until items.has_key?(item)
		puts "Please Enter an Item to delete that exists in inventory"
		inventory(items)
		item = gets.chomp
	end	
	# Enhance by checking for non 0 inventory values and warning user there is still inventory before deleting
	items.delete(item)
 end   

# Method for Printing Options
def options()
	puts "Please Select from the following options:
	0: Enter \"0\" to Exit inventory application
	1: Enter \"1\" to View inventory
	2: Enter \"2\" to Update an Item in inventory
	3: Enter \"3\" to Add an Item to inventory
	4: Enter \"4\" to Delete an Item from inventory
	"
end

# Creating a hash of inital inventory of candy
items = {'Kit Kat' => 3, 'Reeses' => 10, 'M&Ms' => 4, 'Hershey' => 13}

exit = false

until exit
	options()
	user_action = gets.chomp
	until user_action == "0"

		if user_action == "1"
			inventory(items)
			puts "\n"
			options()
			user_action = gets.chomp
		elsif user_action == "2"
			inventory(items)
			puts "\n"
			update_item(items)
			puts "\n"
			options()
			user_action = gets.chomp
		elsif user_action == "3"
			inventory(items)
			puts "\n"
			add_item(items)
			puts "\n"
			options()
			user_action = gets.chomp			
		elsif user_action == "4"
			inventory(items)
			puts "\n"			
			delete_item(items)
			puts "\n"
			options()
			user_action = gets.chomp			
		end
	end
	puts "Exiting inventory application"
	exit = true
end


# inventory(items)
# add_item(items)
# add_item(items)
# inventory(items)