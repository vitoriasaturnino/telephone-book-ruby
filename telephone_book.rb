# base de contatos
@contacts = [
  {name: "Vitoria", telephone: "(96) 2613-4468"},
  {name: "Veronica", telephone: "(64) 3169-5252"},
  {name: "Joao", telephone: "(37) 3423-9512"},
]

def all_contacts
  @contacts.each do |contact|
    puts " #{contact[:name]} - #{contact[:telephone]} "
  end
  puts "------------------------------\n"
end  

def add_contact
  puts "Enter contact name: "
  name = gets.chomp
  puts "Enter the phone number: "
  telephone = gets.chomp
  @contacts << {name: name, telephone: telephone}
end

def seek_contact
  puts "Enter contact name: "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      puts "#{contact[:name]} - #{contact[:telephone]}"
    end
  end
  puts "------------------------------\n"
end

def edit_contact
  puts "Enter the contact you want to edit: "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      puts "Enter new contact name: \n [to exit without saving changes press enter]"
      saved_name = contact[:name]
      contact[:name] = gets.chomp
      contact[:name] = contact[:name].empty? ? saved_name : contact[:name]

      puts "Enter the updated contact number: \n [to exit without saving changes press enter]"
      saved_telephone = contact[:telephone]
      contact[:telephone] = gets.chomp
      contact[:telephone] = contact[:telephone].empty? ? saved_telephone : contact[:telephone]
    end
  end
end

def delete_contact
  puts "Enter the name of the contact you want to delete:"
  name = gets.chomp
  @contacts.each do |contact|
    if contact[:name].downcase == (name.downcase)
      index = @contacts.index(contact)
      @contacts.delete_at(index)
      break
    end
  end
end

loop do 
  puts "
  Telephone Book\n
  ------------------------------\n
  Choose an option:\n
  1 - Contacts\n
  2 - Add Contact\n
  3 - Seek Contact\n
  4 - Edit Contact\n
  5 - Delete Contact\n
  0 - Go out :(\n
  ------------------------------\n"

  option = gets.chomp.to_i

  case option 
    when 0
      puts 'See you later :)';
      break
    when 1
      all_contacts
    when 2
      add_contact
    when 3
      seek_contact
    when 4
      edit_contact
    when 5
      delete_contact
    else
      puts "Invalid option :l"
  end
end