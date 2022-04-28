def insert_book(filename)
  file = File.new(filename, 'a')

  print "Enter book Id: "
  book_id = gets.chomp

  print "Enter book name: "
  book_name = gets.chomp

  print "Enter book author: "
  author = gets.chomp

  print "Enter book quantity: "
  quantity = gets.chomp

  file.puts "#{book_id}|#{book_name}|#{author}|#{quantity}"
  file.close
end
