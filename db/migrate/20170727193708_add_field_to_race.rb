class AddFieldToRace < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :time, :time
  end
end
