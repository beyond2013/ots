class FixSessionColumnEnd < ActiveRecord::Migration[5.2]
  def change
    rename_column :sessions, :end, :finish
  end
end
