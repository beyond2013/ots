class CreateProgramSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :program_sessions do |t|
      t.references :program, foreign_key: true
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
