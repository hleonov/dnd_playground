class CreateCharNotes < ActiveRecord::Migration
  def change
    create_table :char_notes do |t|
      t.text :content
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
