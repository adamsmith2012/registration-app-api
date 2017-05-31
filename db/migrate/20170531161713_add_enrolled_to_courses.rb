class AddEnrolledToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :enrolled, :integer
  end
end
