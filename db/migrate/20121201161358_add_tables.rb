class AddTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar
      t.float :balance
      t.integer :games_won
      t.integer :games_lost
      t.float :amt_won
      t.float :amt_lost
      t.timestamps
    end
    create_table :cards do |t|
      t.integer :value
      t.string :suit
      t.string :face
      t.string :photo
    end
  end
end
