class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :name, null: false
      t.string :nature, null: false

      t.timestamps
    end
  end
end
