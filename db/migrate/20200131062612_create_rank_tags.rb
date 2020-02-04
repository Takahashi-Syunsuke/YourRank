class CreateRankTags < ActiveRecord::Migration[5.2]
  def change
    create_table :rank_tags do |t|
      t.references :rank, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
