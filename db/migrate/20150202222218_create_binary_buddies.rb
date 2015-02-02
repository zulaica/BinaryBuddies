class CreateBinaryBuddies < ActiveRecord::Migration
  def change
    create_table(:binary_buddies) do |t|
      t.column(:name, :string)
      t.column(:food_level, :integer)
      t.column(:sleep_level, :integer)
      t.column(:activity_level, :integer)
      t.timestamps
    end
  end
end
