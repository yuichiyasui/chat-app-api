class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uuid, null: false
      t.string :name, limit: 30, null: false

      t.timestamps
      t.index :uuid, unique: true
    end
  end
end
