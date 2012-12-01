class AddColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :hand, :string
  end
end
