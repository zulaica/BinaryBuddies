class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.column :shelter_type, :string
      t.column :capacity, :integer
      t.column :durability, :integer

      t.timestamps
    end

    add_column :binary_buddies, :shelter_id, :integer
  end
end
