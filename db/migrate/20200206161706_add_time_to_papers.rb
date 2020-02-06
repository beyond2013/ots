class AddTimeToPapers < ActiveRecord::Migration[5.2]
  def change
    add_column :papers, :allowedtime, :time, null: false
  end
end
