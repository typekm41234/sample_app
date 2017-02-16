class RemoveColumnFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :password
    remove_column :users, :password_confirm
  end

  def down
    add_column :users, :password, :string
    add_column :users, :password_confirm , :string
  end
end
