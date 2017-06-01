class MakeScheduleUnique < ActiveRecord::Migration[5.0]
  def change
    add_index :schedules, [:student_id, :course_id], unique: true
  end
end
