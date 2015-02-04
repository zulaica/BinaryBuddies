class RenameShelterTypeColumn < ActiveRecord::Migration
  def change
    rename_column :shelters, :shelter_type, :variety
  end
end
