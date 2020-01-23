class CreateStandUps < ActiveRecord::Migration[6.0]
  def change
    create_table :stand_ups, id: false, force: true do |t|
      t.string :id, :limit => 36, :primary_key => true
      t.datetime :date
      t.string :scrum_master
      t.string :team

      t.timestamps
    end
  end
end
