class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id

      t.string :title , null: false
      t.text :content , null: false
      t.timestamps null: false
	  t.integer :who_like, array: true, default: [] 	  
	  t.integer :likes
    end
  end
end
