class AddArchivedToMission < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :archived, :boolean
  end
end
