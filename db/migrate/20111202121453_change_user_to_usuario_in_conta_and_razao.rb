class ChangeUserToUsuarioInContaAndRazao < ActiveRecord::Migration
  def up
    rename_column :conta, :user_id, :usuario_id
    rename_column :razao, :user_id, :usuario_id
  end

  def down
    rename_column :conta, :usuario_id, :user_id
    rename_column :razao, :usuario_id, :user_id 
  end
end
