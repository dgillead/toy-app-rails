class CreateMicroPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :micro_posts do |t|
      t.string :content, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
