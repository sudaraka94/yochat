class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamp :last_seen
      t.boolean :gender
      t.integer :age

      t.timestamps
    end
    add_index :users, :name
  end
end
