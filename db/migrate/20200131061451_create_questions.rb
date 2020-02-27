class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :description, null: false
      t.integer :marks
      t.references :paper, foreign_key: true

      t.timestamps
    end
  end
end