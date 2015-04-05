class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end
end

class Contact < Rolodex

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def add_new_contact()
		print "Enter First Name: "
		first_name = gets.chomp
	 	print "Enter Last Name: "
	  	last_name = gets.chomp
	  	print "Enter Email Address: "
	  	email = gets.chomp
	  	print "Enter a Note: "
	  	note = gets.chomp
	  	contact = Contact.new(first_name, last_name, email, note)
	end
end

class Crm < Contact 
	
	def initialize(first_name, last_name, email, note)
		super
	end

	def print_main_menu

		puts "-- [1] Add a new contact --"
		puts "-- [2] Modify an existing contact --"
		puts "-- [3] Delete a contact --"
		puts "-- [4] Display all the contacts --"
		puts "-- [5] Display an attribute --"
		puts "-- [6] Exit --"
		puts "~ Enter a number: "
	end

	def main_menu1()

		print_main_menu
		user_selected = gets.chomp.to_i
		call_option(user_selected)

	end

	def call_option(user_selected)

		add() if user_selected == 1
		modify1() if user_selected == 2
		delete() if user_selected == 3
		display_all() if user_selected == 4
		display_attr() if user_selected == 5
		exit() if user_selected == 6
		end
	end


	def add()
		puts "What is the first name you want to add?"
		first_name = gets.chomp

		puts "What is the last name you want to add?"
		last_name = gets.chomp

		puts "What is the Email you wish to add?"
		email = gets.chomp

		puts "Are there any notes you wish to add?"
		notes = gets.chomp
	end

	def modify1()

		puts "Please enter the ID that you wish to make changes to: "
		id_changes = gets.chomp
		if id.include?(id_changes)
			puts "Are you sure you want to edit this information? [Y/N]"
			id_pos = gets.chomp.downcase
			if id_pos == "y"
				modify2()
			elsif id_pos == "n"
				puts "Exiting application"
				exit()
			else
				puts "Please type [Y] or [N]."
			end
		else
			puts "That ID is not in our databases."
			exit()
		end
	end

	def modify2()

		puts "Editing First Name: "
		edit_first = gets.chomp

		puts "Editing Last Name: "
		edit_last = gets.chomp

		puts "Editing Email: "
		edit_email = gets.chomp

		puts "Editing Notes: "
		edit_notes = gets.chomp
	end

	def display_all()

		puts @contacts

	end

	def display_contact()
		puts "Please enter the ID you want to search: "
		id_find = gets.chomp
		if ID_Find.include(@id)
			puts contact.id
		else
			puts "That ID is not stored in this database!"
		end
	end

	def display_attr()

		puts "Please enter an attribute that correlates with the contact information: "
		attrib = gets.chomp

	end

	def delete()
		puts "Please enter the ID you wish to delete."
		id_delete = gets.chomp
	end

	def exit()
		puts "\e[H\e[2J"
	end



crm = Crm.new("AS", "AS", "AS", "AS")
crm.main_menu1