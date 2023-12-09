class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :shop
      t.string :genre
      t.string :univ
      t.integer :mtizikan
      t.text :about
      t.integer :price
      t.integer :user_id
      t.string :image
      t.integer :hosi

      t.timestamps
    end
  end
end
