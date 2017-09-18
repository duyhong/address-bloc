require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
     @entries = []
  end

  def add_entry(name, phone_number, email)
     # #9
     index = 0
     entries.each do |entry|
     # #10
       if name < entry.name
         break
       end
       index+= 1
     end
     entries.insert(index, Entry.new(name, phone_number, email))
   end

   def remove_entry(name, phone_number, email)
     entries.each_with_index do |entry, index|
      #if name == entries[index].name
      if name == entry.name && phone_number == entry.phone_number && email == entry.email
        entries.delete_at(index)
      end
    end
   end
end
