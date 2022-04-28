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

file_content = "Book ID|Book Name|Author|Quantity
1|Book 1|Author 1|5
2|Book 2|Author 2|5
3|Book 3|Author 3|5
4|Book 4|Author 4|5
5|Book 5|Author 5|5
6|Book 6|Author 6|5
7|Book 7|Author 7|10
8|Book 8|Author 7|10
9|Book 8|Author 8|10"

filtered_books = [
"1|Book 1|Author 1|5",
"2|Book 2|Author 2|5",
"3|Book 3|Author 3|5"
]
