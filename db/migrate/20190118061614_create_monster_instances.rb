class CreateMonsterInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :monster_instances do |t|
      t.references :monster, foreign_key: true

      t.timestamps
    end
  end
end
