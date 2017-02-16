class AddColumnPasswordAndPasswordComfirmation < ActiveRecord::Migration
  def up
    add_column :users, :password, :string
    add_column :users, :password_comfirmation, :string
  end
  def down
    remove_column :users, :password
    remove_column :users, :password_comfirmation
  end
end
