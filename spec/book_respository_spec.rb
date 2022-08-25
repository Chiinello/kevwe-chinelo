require 'book_respository.rb'

RSpec.describe BookRepository do 
    repo = BookRepository.new
    books = repo.all

    expect(books.length).to eq(3)

    expect(books[0].id).to eq(1) 
    expect(books[0].title).to eq("The Alchemist")
    expect(books[0].author_name).to eq("Paulo Coelho")

    expect(books[1].id).to eq(2) # =>  2
    expect(books[1].title).to eq("Shoe Dog") # =>  'Anna'
    expect(books[1].author_name).to eq("Phil Knight") # =>  'May 2022'

    expect(books[0].id).to eq(3) 
    expect(books[0].title).to eq("Dear Senthuran")
    expect(books[0].author_name).to eq("Akwaeke Emezi")
end