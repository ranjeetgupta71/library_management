load "search_book.rb"

def issue(available_books, book_id_to_issue)
  issued_book_id = nil

  available_books.each do |column|
      id, book_name, author, quantity = column.split('|')

      if book_id_to_issue == id.to_i && quantity.to_i >= 1
          quantity = quantity.to_i - 1
          issued_book_id = book_id_to_issue
      end
    end
  end

  issued_book_id
end

def issue_a_book(filename)
  available_books = search_book(filename)
  
  print "choose book id: "
  book_id_to_issue = gets.to_i

  issued_book_id = issue(available_books, book_id_to_issue)

  if issued_book_id
    puts "Book with id #{issued_book_id} has been issued"
  else
    puts "Currently, the requested book is unavailable"
  end
end

