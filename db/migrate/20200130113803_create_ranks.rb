class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :title, null: false
      t.string :rank_1, null: false
      t.string :rank_2, null: false
      t.string :rank_3, null: false
      t.text :image_1
      t.text :image_2
      t.text :image_3
      t.string :content_1
      t.string :content_2
      t.string :content_3
      t.integer :user_id, null: false, foreign_key: true
      t.integer :tag_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
