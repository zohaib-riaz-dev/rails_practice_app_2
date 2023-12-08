# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.create(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', category: :fiction)
Book.create(title: 'To Kill a Mockingbird', author: 'Harper Lee', category: :fiction)
Book.create(title: 'The Da Vinci Code', author: 'Dan Brown', category: :mystery)
Book.create(title: 'Hello World', author: 'Hk. Johnny', category: :mystery)
Book.create(title: 'Pride and Prejudice', author: 'Jane Austen', category: :romantic)


book1 = Book.create(title: 'The Great Gatsby')
book2 = Book.create(title: 'To Kill a Mockingbird')

library1 = Library.create(name: 'City Library')
library2 = Library.create(name: 'University Library')

BookLibrary.create(book: book1, library: library1)
BookLibrary.create(book: book1, library: library2)
BookLibrary.create(book: book2, library: library2)
