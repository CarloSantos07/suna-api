class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :employee
      t.integer :type
      t.text :body
      # t.references :team, null: false, foreign_key: true
      t.references :stand_up, foreign_key: true, type: :string

      t.timestamps
    end
  end
end
