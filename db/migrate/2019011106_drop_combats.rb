class DropCombats < ActiveRecord::Migration[5.1]
  def change
  	drop_table :combats
  end
end
