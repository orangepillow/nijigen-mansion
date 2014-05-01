class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.integer :room_id

      t.timestamps
    end
    add_index :notes, [:room_id, :created_at]
  end
end
