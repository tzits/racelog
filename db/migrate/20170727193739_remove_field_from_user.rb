class RemoveFieldFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :time, :time
  end
end
