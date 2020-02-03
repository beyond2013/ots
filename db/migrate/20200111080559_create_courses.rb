class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :title

      t.timestamps
    end
    add_index :courses, :code, unique: true
    add_index :courses, :title, unique: true
  end
end
