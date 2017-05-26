class AddNumToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :num, :string
  end
end
