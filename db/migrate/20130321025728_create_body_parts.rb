class CreateBodyParts < ActiveRecord::Migration
  def change
    create_table :body_parts do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
