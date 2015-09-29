require_relative 'contact'
require_relative 'contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets

class Application

  def command_list
    case ARGV[0]

    when "help"
      puts "Here is a list of available commands:"
      puts "new - Create a new contact"
      puts "list - List all contacts"
      puts "show - Show a contact"
      puts "find - Find a contact"
    when "new"
      puts "Please enter the first name of the contact you would like to create."
      first_name = STDIN.gets.chomp
      puts "Please enter the last name of the contact you would like to create."
      last_name = STDIN.gets.chomp
      puts "Please enter the email address of the contact you would liek to create."
      email = STDIN.gets.chomp
      new_contact = Contact.new(first_name, last_name, email)
      new_contact.create
    when "list"
      puts "this is the list command"
    when "show"
      puts "this is the show command"
    when "find"
      puts "this is the find command"
    else
      puts "I'm sorry, I don't recognize that command."
    end

  end
  
end

test = Application.new
test.command_list