class DeviseCreateCitizens < ActiveRecord::Migration
  def self.up
    create_table(:citizens) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :citizens, :email,                :unique => true
    add_index :citizens, :reset_password_token, :unique => true
    # add_index :citizens, :confirmation_token,   :unique => true
    # add_index :citizens, :unlock_token,         :unique => true
    # add_index :citizens, :authentication_token, :unique => true
  end

  def self.down
    drop_table :citizens
  end
end
