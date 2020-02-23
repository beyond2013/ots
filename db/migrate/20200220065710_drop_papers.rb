class DropPapers < ActiveRecord::Migration[5.2]
  def change
    drop_table :papers, force: :cascade
  end
end
