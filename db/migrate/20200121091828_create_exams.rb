class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :title
      t.integer :marks

      t.timestamps
    end
    add_index :exams, :title, unique: true
  end
end
