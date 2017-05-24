class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.string :symbol
      t.string :season
      t.integer :year

      t.timestamps
    end
  end
end
