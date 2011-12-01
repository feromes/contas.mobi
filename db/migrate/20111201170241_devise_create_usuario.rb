class DeviseCreateUsuario < ActiveRecord::Migration
  def self.up
    create_table(:usuario) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.encryptable
      t.confirmable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.token_authenticatable

      t.timestamps
    end

    add_index :usuario, :email,                :unique => true
    add_index :usuario, :reset_password_token, :unique => true
    add_index :usuario, :confirmation_token,   :unique => true
    add_index :usuario, :unlock_token,         :unique => true
    add_index :usuario, :authentication_token, :unique => true
  end

  def self.down
    drop_table :usuario
  end
end
