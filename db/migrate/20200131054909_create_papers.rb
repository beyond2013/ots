class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.references :session, foreign_key: true
      t.references :program, foreign_key: true
      t.references :exam, foreign_key: true
      t.references :course, foreign_key: true
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
