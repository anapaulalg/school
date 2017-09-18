class AddStudentIdToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :student_id, :integer
  end
end
