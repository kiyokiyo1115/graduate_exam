class RenameAnserColumnToExams < ActiveRecord::Migration[5.1]
  def change
    rename_column :exams, :anser, :answer
  end
end
