class Critics < ActiveRecord::Migration[5.2]
  
  def change
    create_table :critics do |t|
      t.string :name
      t.string :soc_med
    end
  end

end
