class AddTables < ActiveRecord::Migration
  def change
    add_column :users, :balance, :float, :default => 1000
    add_column :users, :games_won, :integer, :default => 0
    add_column :users, :games_lost, :integer, :default => 0
    add_column :users, :amt_wont, :float, :default => 0
    add_column :users, :amt_lost, :float, :default => 0
    create_table :cards do |t|
      t.integer :value
      t.string :suit
      t.string :face
      t.string :photo
    end
  end
end