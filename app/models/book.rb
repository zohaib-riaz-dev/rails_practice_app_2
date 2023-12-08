class Book < ApplicationRecord
  has_many :book_libraries
  has_many :libraries, through: :book_libraries
  
  enum category: { mystery: 0, romantic: 1, fiction: 2 }

  scope :mystery_books, -> { where(category: Book.categories[:mystery]) }
  scope :romantic_books, -> { where(category: Book.categories[:romantic]) }
  scope :fiction_books, -> { where(category: Book.categories[:fiction]) }
end
