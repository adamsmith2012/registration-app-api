class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :symbol
      t.string :img

      t.timestamps
    end
  end
end
