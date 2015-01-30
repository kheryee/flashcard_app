require_relative '../config/environment'
@deck = Deck.create(name: "english-german")


File.open("db/english-german.txt", "r") do |x|
  x.each do |row|
    row = row.chomp.split(" ")
    Card.create(deck_id: @deck.id, word: row[0], translation: row[1])
  end
end

@deck = Deck.create(name: "english-spanish")

File.open("db/english-spanish.txt", "r") do |x|
  x.each do |row|
    row = row.chomp.split(" ")
    Card.create(deck_id: @deck.id, word: row[0], translation: row[1])
  end
end