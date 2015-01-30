require_relative '../config/environment'
deck = Deck.create(name: "english-german")


File.open("db/english-spanish.txt", "r") do |x|
  x.each do |row|
    row = row.chomp.split("\t")
    Card.create(word: row[0], translation: row[1])
    end
end