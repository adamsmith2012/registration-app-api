class AddImgToInstructors < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :img, :string
  end
end
