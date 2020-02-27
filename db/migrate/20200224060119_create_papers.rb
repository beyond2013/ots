class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.references :program_sessions, foreign_key: true
      t.references :course_instructors, foreign_key: true
      t.references :exam, foreign_key: true
      t.time :timeallowed

      t.timestamps
    end
  end
end
