class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |x|
      x.string :name
      
      x.timestamps
    end
  end
end
