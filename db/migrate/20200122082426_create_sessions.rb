class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.date :from, null: false
      t.date :to, null: false

      t.timestamps
			t.index [:from, :to], unique: true
    end
  end
end
