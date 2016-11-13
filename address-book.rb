# A simple address book program.
# Can make address books that are composed of one or more entries.
# Each entry has the appropriate fields for a persons personal details.
#
# Author:: Samuel Wilson (samWson@users.noreply.github.com)
# Licence:: Distributed under the Unlicence (http://unlicense.org)

# Creates an address book.
class Address_book

  attr_accessor :entries
  attr_reader :title

  # Creates address books.
  def initialize(title)

    @title = title # The name of this address book.
    @entries = []  # Stores all the entries in the address book.
  end

  # Print the address book title and all its entries.
  def show_all_entries()

    puts @title

    @entries.each do |entry|
      puts entry
    end

  end

end


# Creates an address book entry.
class Entry

  attr_accessor :name

  # Creates address book entries.
  def initialize(name)

    @name = name # The name of the entry

  end

  # Overriding to string method.
  def to_s
    "#{@name}"
  end
end

# Stores user interface comands.
command = nil

# User interface loop.
until command == "q"

  # Make an address book and entries.
  ab = Address_book.new("book1")
  ab.entries.push(Entry.new("entry1"))
  ab.entries.push(Entry.new("entry2"))

  ab.show_all_entries

  puts "Press \"q\" to quit"
  command = gets.chomp.downcase
end
