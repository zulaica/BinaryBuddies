class CreateUsersAndAddUserIdToBinaryBuddies < ActiveRecord::Migration
  def change
    add_column :binary_buddies, :user_id, :integer

    create_table :users do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
