def search_book(filename)
  print "Enter book name: "
  search_keyword = gets.chomp.downcase

  filtered_books = []
  file_content = File.read(filename)

  file_content.split(/\n/).each do |book|
    _, book_name, author = book.split('|')

    if book_name.downcase.include?(search_keyword) || author.downcase.include?(search_keyword)
      filtered_books.push(book)
    end
  end

  filtered_books.each do |book|
    book.split('|').each do |attr|
      print attr.ljust(20, ' ')
    end
    puts
  end

  puts "No Book Found" if filtered_books.length == 0

  filtered_books
end
