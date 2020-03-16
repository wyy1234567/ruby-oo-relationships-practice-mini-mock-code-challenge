require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new('wyy')
author2 = Author.new('dyl')
author3 = Author.new('hy')
author4 = Author.new('zhy')

book1 = Book.new('bunny', author1, 500)
book2 = Book.new('code', author2, 1100)
book3 = Book.new('dog', author3, 800)
book4 = Book.new('hou', author4, 400)
book5 = Book.new('huang', author1, 500)
book6 = Book.new('lucky', author3, 500)
book7 = Book.new('python', author2, 1000)


binding.pry
puts "wow"


