class AddCapToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :cap, :integer
  end
end
