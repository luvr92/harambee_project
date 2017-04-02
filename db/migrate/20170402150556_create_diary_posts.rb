class CreateDiaryPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :diary_posts do |t|
      t.string :title
      t.text :content
      t.string :photo

      t.timestamps
    end
  end
end
