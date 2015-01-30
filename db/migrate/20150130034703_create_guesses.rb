class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |x|
      x.integer :round_id
      x.integer :card_id
      x.boolean :correctness, default: false
      x.timestamps
    end
  end
end
