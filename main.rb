load "display_menu.rb"
load "display_all_books.rb"
load "insert_book.rb"
load "search_book.rb"
load "issue_book.rb"

BOOKS_DATABASE_FILENAME = "books_database.txt"

def main
  while(true)
    display_menu
    print "Enter you choice: "
    choice = gets.to_i

    case choice
    when 1
      display_all_books(BOOKS_DATABASE_FILENAME)
    when 2
      insert_book(BOOKS_DATABASE_FILENAME)
    when 3
      search_book(BOOKS_DATABASE_FILENAME)
    when 4
      issue_a_book(BOOKS_DATABASE_FILENAME)
    when 5
      exit
    else
      puts "You have entered an invalid choice"
    end
  end
end

main
