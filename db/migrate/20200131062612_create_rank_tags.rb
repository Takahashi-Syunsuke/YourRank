class CreateRankTags < ActiveRecord::Migration[5.2]
  def change
    create_table :rank_tags do |t|
      t.integer :rank_id, null: false, foreign_key: true
      t.integer :tag_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
