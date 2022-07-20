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

def add_contact
  puts "Digite o nome do contato: "
  name = gets.chomp
  puts "Digite o número do telefone: "
  telephone = gets.chomp
  @contacts << {name: name, telephone: telephone}
end

def seek_contact
  puts "Digite o nome do contato: "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      puts "#{contact[:name]} - #{contact[:telephone]}"
    end
  end
  puts "------------------------------\n"
end

def edit_contact
  puts "Informe o contato que deseja editar: "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      puts "Digite o novo nome do contato: \n [para sair sem salvar alterações pressione enter]"
      saved_name = contact[:name]
      contact[:name] = gets.chomp
      contact[:name] = contact[:name].empty? ? saved_name : contact[:name]

      puts "Digite o numero atualizado do contato: \n [para sair sem salvar alterações pressione enter]"
      saved_telephone = contact[:telephone]
      contact[:telephone] = gets.chomp
      contact[:telephone] = contact[:telephone].empty? ? saved_telephone : contact[:telephone]
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

  end
end