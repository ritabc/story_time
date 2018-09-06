class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.timestamps
    end

    create_table :contributions do |t|
      t.integer :story_id
      t.integer :user_id
      t.integer :image_id
      t.integer :sentence_id
      t.timestamps
    end
  end
end
