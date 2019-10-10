class Reviews < ActiveRecord::Migration[5.2]
  
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :critic_id
    end
  end

end
