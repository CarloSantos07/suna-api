class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    # create_table :notes, id: :uuid do |t|
    create_table :notes do |t|
    t.string :employee
      t.integer :kind
      t.text :body
      t.string :stand_up_id_id

      t.timestamps
    end
    add_index :notes, :stand_up_id_id
  end
end
