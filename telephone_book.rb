# base de contatos
@contacts = [
  {name: "Vitoria", telephone: "123456789"},
  {name: "Veronica", telephone: "987654321"},
]

def all_contacts
  @contacts.each do |contact|
    puts " #{contact[:name]} - #{contact[:telephone]} "
  end
  puts "------------------------------\n"
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
   
    when 3
    
    when 4

    when 5

  end
end