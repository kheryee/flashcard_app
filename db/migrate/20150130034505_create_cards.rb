class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |x|
      x.integer :deck_id
      x.string :word
      x.string :translation
      
      x.timestamps
    end
  end
end
