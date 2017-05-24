class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.time :time
      t.string :day
      t.references :room, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
