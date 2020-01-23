class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.json :candidates
      t.string :city
      t.references :user, foreign_key: true
      t.integer :fee
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
