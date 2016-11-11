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

  # Stores all the address book entries.
  @entries = []

  def initialize(title)

    # The name of this address book.
    @title = title
  end

end


# Creates an address book entry
class Entry

  attr_accessor :name

  def initialize(name)

    # The name of the entry
    @name = name

  end
end


ab = Address_book.new("book1")
ab.entries.push(Entry.new("entry1"))

puts ab.title
puts ab.entries

