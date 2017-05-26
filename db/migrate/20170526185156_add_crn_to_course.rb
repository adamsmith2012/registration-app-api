class AddCrnToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :crn, :integer
  end
end
