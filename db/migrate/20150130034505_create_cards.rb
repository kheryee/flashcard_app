class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |x|
      x.string :word
      x.string :translation
      x.integer :deck_id
      
      x.timestamps
    end
  end
end
