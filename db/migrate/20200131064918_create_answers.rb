class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.references :choice, foreign_key: true

      t.timestamps
			t.index [:question_id, :choice_id], unique: true
    end
  end
end
