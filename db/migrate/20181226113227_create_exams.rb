class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.integer :year, :null => false
      t.string :law, :null => false
      t.integer :number, :null => false
      t.text :question, :null => false
      t.text :anser, :null => false

      t.timestamps
    end
  end
end
