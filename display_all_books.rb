def display_all_books(database_filename)
  file_content = File.read(database_filename)
  books_list = file_content.split(/\n/)

  books_list.each do |book|
    attributes = book.split('|')

    attributes.each do |attr|
      print attr.ljust(20, ' ')
    end

    puts
  end
end
