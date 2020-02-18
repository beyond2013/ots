class RemoveProgramIdFromSession < ActiveRecord::Migration[5.2]
  def change
    remove_column :sessions, :program_id, :reference
  end
end
