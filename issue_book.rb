load "search_book.rb"

def issue_a_book filename
  available_books = search_book(filename)

  if available_books.length != 0
    print "choose book id :"
    book_id_selected = gets.to_i
  else
    puts "Sorry Book is not available rn..."
  end
end
