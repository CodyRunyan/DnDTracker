class AddTypeToMonsters < ActiveRecord::Migration[5.1]
  def change
    add_column :monsters, :tags, :string
  end
end
