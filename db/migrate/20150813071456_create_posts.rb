class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id

      t.string :title , null: false
      t.text :content , null: false

      t.integer :num_comment, default: 0

      t.string :background
      t.timestamps :created_at , null: false
    end
  end
end
