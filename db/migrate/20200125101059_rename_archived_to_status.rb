class RenameArchivedToStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :status, :string
    remove_column :missions, :archived
  end
end
