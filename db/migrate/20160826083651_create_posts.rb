class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :url
      t.string :image , default: ""
      t.integer :avg_point
      t.string :anniversary
      t.string :age_group
      t.string :gift_gender
      t.datetime :posted_at
      t.string :money

      t.timestamps null: false
    end
  end
end
