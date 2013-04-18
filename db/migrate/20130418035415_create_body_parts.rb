class CreateBodyParts < ActiveRecord::Migration
  def change
    create_table :body_parts do |t|
      t.integer :corpse_id, nil: false
      t.string  :name,      nil: false

      t.string  :image

      t.timestamps
    end

    add_index :body_parts, [:corpse_id, :name], unique: true
  end
end
