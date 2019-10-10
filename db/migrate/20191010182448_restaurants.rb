class Restaurants < ActiveRecord::Migration[5.2]
  
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :neighborhood
    end
  end

end
