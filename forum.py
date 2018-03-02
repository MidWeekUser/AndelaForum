class Forum(object):

	def show_available_options():
	    print('1. Show Users')
	    print('2. Register')
	    print('3. Quit')
	    print()

	users = {}
	options = 0

	'''Display the menu to the user'''

	show_available_options()

	'''Conditional statements managing menu selections'''

	while options != 3:
	    options = int(input("Select an option above: (1-3): "))
	    if options == 1:
	        print("Users:")
	        for x in users.keys():
	            print("Name: ", x, "\tUsername:", users[x])
	        print()

	    elif options == 2:

		        print("Sign Up")
		        last_name = input("Last Name: ")
		        username = input("Username: ")
		        users[last_name] =username


	    elif options != 3:
	        print_menu()
