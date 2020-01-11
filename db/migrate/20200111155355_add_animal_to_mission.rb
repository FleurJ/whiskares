class AddAnimalToMission < ActiveRecord::Migration[5.2]
  def change
    add_reference :missions, :animal, foreign_key: true
  end
end
