class AddProgramToSessions < ActiveRecord::Migration[5.2]
  def change
    add_reference :sessions, :program, foreign_key: true
  end
end
