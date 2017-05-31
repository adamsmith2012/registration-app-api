class AddBioToInstructors < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :bio, :text
  end
end
