class FixSessionColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :sessions, :from, :start
    rename_column :sessions, :to, :end
  end
end
