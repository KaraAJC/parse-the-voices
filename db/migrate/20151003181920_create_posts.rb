class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :date
      t.integer :user_id
      t.text :body

      t.timestamps null: false
    end
  end
end
