class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |x|
      x.integer :number
      
      x.timestamps
    end
  end
end
