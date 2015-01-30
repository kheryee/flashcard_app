class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |x|
      x.string :username, null:false, unique:true
      x.string :email
      x.string :password
      
      x.timestamps
    end
  end
end

