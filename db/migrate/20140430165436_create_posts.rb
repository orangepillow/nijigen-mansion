class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.text :content
      t.integer :note_id

      t.timestamps
    end
    add_index :posts, [:note_id, :created_at]
  end
end
